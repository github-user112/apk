package d.b.p.i;

/* loaded from: classes.dex */
public final class d extends d.b.p.i.k implements d.b.p.i.m, android.view.View.OnKeyListener, android.widget.PopupWindow.OnDismissListener {
    public static final int B = d.b.g.abc_cascading_menu_item_layout;
    public boolean A;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1709c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1710d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1711e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f1712f;

    /* renamed from: g, reason: collision with root package name */
    public final android.os.Handler f1713g;
    public android.view.View o;
    public android.view.View p;
    public int q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public boolean w;
    public d.b.p.i.m.a x;
    public android.view.ViewTreeObserver y;
    public android.widget.PopupWindow.OnDismissListener z;
    public final java.util.List<d.b.p.i.g> h = new java.util.ArrayList();
    public final java.util.List<d.b.p.i.d.C0037d> i = new java.util.ArrayList();
    public final android.view.ViewTreeObserver.OnGlobalLayoutListener j = new d.b.p.i.d.a();
    public final android.view.View.OnAttachStateChangeListener k = new d.b.p.i.d.b();
    public final d.b.q.j0 l = new d.b.p.i.d.c();
    public int m = 0;
    public int n = 0;
    public boolean v = false;

    public class a implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (!d.b.p.i.d.this.b() || d.b.p.i.d.this.i.size() <= 0 || d.b.p.i.d.this.i.get(0).a.A) {
                return;
            }
            android.view.View view = d.b.p.i.d.this.p;
            if (view == null || !view.isShown()) {
                d.b.p.i.d.this.dismiss();
                return;
            }
            java.util.Iterator<d.b.p.i.d.C0037d> it = d.b.p.i.d.this.i.iterator();
            while (it.hasNext()) {
                it.next().a.d();
            }
        }
    }

    public class b implements android.view.View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            android.view.ViewTreeObserver viewTreeObserver = d.b.p.i.d.this.y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.b.p.i.d.this.y = view.getViewTreeObserver();
                }
                d.b.p.i.d dVar = d.b.p.i.d.this;
                dVar.y.removeGlobalOnLayoutListener(dVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements d.b.q.j0 {

        public class a implements java.lang.Runnable {
            public final /* synthetic */ d.b.p.i.d.C0037d a;
            public final /* synthetic */ android.view.MenuItem b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ d.b.p.i.g f1714c;

            public a(d.b.p.i.d.C0037d c0037d, android.view.MenuItem menuItem, d.b.p.i.g gVar) {
                this.a = c0037d;
                this.b = menuItem;
                this.f1714c = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.b.p.i.d.C0037d c0037d = this.a;
                if (c0037d != null) {
                    d.b.p.i.d.this.A = true;
                    c0037d.b.c(false);
                    d.b.p.i.d.this.A = false;
                }
                if (this.b.isEnabled() && this.b.hasSubMenu()) {
                    this.f1714c.r(this.b, 4);
                }
            }
        }

        public c() {
        }

        @Override // d.b.q.j0
        public void c(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
            d.b.p.i.d.this.f1713g.removeCallbacksAndMessages(null);
            int size = d.b.p.i.d.this.i.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.b.p.i.d.this.i.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            d.b.p.i.d.this.f1713g.postAtTime(new d.b.p.i.d.c.a(i2 < d.b.p.i.d.this.i.size() ? d.b.p.i.d.this.i.get(i2) : null, menuItem, gVar), gVar, android.os.SystemClock.uptimeMillis() + 200);
        }

        @Override // d.b.q.j0
        public void e(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
            d.b.p.i.d.this.f1713g.removeCallbacksAndMessages(gVar);
        }
    }

    /* renamed from: d.b.p.i.d$d, reason: collision with other inner class name */
    public static class C0037d {
        public final d.b.q.k0 a;
        public final d.b.p.i.g b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1716c;

        public C0037d(d.b.q.k0 k0Var, d.b.p.i.g gVar, int i) {
            this.a = k0Var;
            this.b = gVar;
            this.f1716c = i;
        }
    }

    public d(android.content.Context context, android.view.View view, int i, int i2, boolean z) {
        this.b = context;
        this.o = view;
        this.f1710d = i;
        this.f1711e = i2;
        this.f1712f = z;
        this.q = d.g.m.s.o(view) != 1 ? 1 : 0;
        android.content.res.Resources resources = context.getResources();
        this.f1709c = java.lang.Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.b.d.abc_config_prefDialogWidth));
        this.f1713g = new android.os.Handler();
    }

    @Override // d.b.p.i.m
    public void a(d.b.p.i.g gVar, boolean z) {
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (gVar == this.i.get(i).b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.i.size()) {
            this.i.get(i2).b.c(false);
        }
        d.b.p.i.d.C0037d c0037dRemove = this.i.remove(i);
        c0037dRemove.b.u(this);
        if (this.A) {
            d.b.q.k0 k0Var = c0037dRemove.a;
            if (k0Var == null) {
                throw null;
            }
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                k0Var.B.setExitTransition(null);
            }
            c0037dRemove.a.B.setAnimationStyle(0);
        }
        c0037dRemove.a.dismiss();
        int size2 = this.i.size();
        this.q = size2 > 0 ? this.i.get(size2 - 1).f1716c : d.g.m.s.o(this.o) == 1 ? 0 : 1;
        if (size2 != 0) {
            if (z) {
                this.i.get(0).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        d.b.p.i.m.a aVar = this.x;
        if (aVar != null) {
            aVar.a(gVar, true);
        }
        android.view.ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.y.removeGlobalOnLayoutListener(this.j);
            }
            this.y = null;
        }
        this.p.removeOnAttachStateChangeListener(this.k);
        this.z.onDismiss();
    }

    @Override // d.b.p.i.p
    public boolean b() {
        return this.i.size() > 0 && this.i.get(0).a.b();
    }

    @Override // d.b.p.i.p
    public void d() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (b()) {
            return;
        }
        java.util.Iterator<d.b.p.i.g> it = this.h.iterator();
        while (it.hasNext()) {
            w(it.next());
        }
        this.h.clear();
        android.view.View view = this.o;
        this.p = view;
        if (view != null) {
            boolean z = this.y == null;
            android.view.ViewTreeObserver viewTreeObserver = this.p.getViewTreeObserver();
            this.y = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            this.p.addOnAttachStateChangeListener(this.k);
        }
    }

    @Override // d.b.p.i.p
    public void dismiss() {
        int size = this.i.size();
        if (size > 0) {
            d.b.p.i.d.C0037d[] c0037dArr = (d.b.p.i.d.C0037d[]) this.i.toArray(new d.b.p.i.d.C0037d[size]);
            for (int i = size - 1; i >= 0; i--) {
                d.b.p.i.d.C0037d c0037d = c0037dArr[i];
                if (c0037d.a.b()) {
                    c0037d.a.dismiss();
                }
            }
        }
    }

    @Override // d.b.p.i.m
    public boolean e(d.b.p.i.r rVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        for (d.b.p.i.d.C0037d c0037d : this.i) {
            if (rVar == c0037d.b) {
                c0037d.a.f1791c.requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        rVar.b(this, this.b);
        if (b()) {
            w(rVar);
        } else {
            this.h.add(rVar);
        }
        d.b.p.i.m.a aVar = this.x;
        if (aVar != null) {
            aVar.b(rVar);
        }
        return true;
    }

    @Override // d.b.p.i.m
    public void f(boolean z) {
        java.util.Iterator<d.b.p.i.d.C0037d> it = this.i.iterator();
        while (it.hasNext()) {
            android.widget.ListAdapter adapter = it.next().a.f1791c.getAdapter();
            if (adapter instanceof android.widget.HeaderViewListAdapter) {
                adapter = ((android.widget.HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((d.b.p.i.f) adapter).notifyDataSetChanged();
        }
    }

    @Override // d.b.p.i.p
    public android.widget.ListView g() {
        if (this.i.isEmpty()) {
            return null;
        }
        return this.i.get(r0.size() - 1).a.f1791c;
    }

    @Override // d.b.p.i.m
    public boolean h() {
        return false;
    }

    @Override // d.b.p.i.m
    public void k(d.b.p.i.m.a aVar) {
        this.x = aVar;
    }

    @Override // d.b.p.i.k
    public void l(d.b.p.i.g gVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        gVar.b(this, this.b);
        if (b()) {
            w(gVar);
        } else {
            this.h.add(gVar);
        }
    }

    @Override // d.b.p.i.k
    public boolean m() {
        return false;
    }

    @Override // d.b.p.i.k
    public void o(android.view.View view) {
        if (this.o != view) {
            this.o = view;
            this.n = d.b.k.r.v(this.m, d.g.m.s.o(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d.b.p.i.d.C0037d c0037d;
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0037d = null;
                break;
            }
            c0037d = this.i.get(i);
            if (!c0037d.a.b()) {
                break;
            } else {
                i++;
            }
        }
        if (c0037d != null) {
            c0037d.b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(android.view.View view, int i, android.view.KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // d.b.p.i.k
    public void p(boolean z) {
        this.v = z;
    }

    @Override // d.b.p.i.k
    public void q(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = d.b.k.r.v(i, d.g.m.s.o(this.o));
        }
    }

    @Override // d.b.p.i.k
    public void r(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // d.b.p.i.k
    public void s(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // d.b.p.i.k
    public void t(boolean z) {
        this.w = z;
    }

    @Override // d.b.p.i.k
    public void u(int i) {
        this.s = true;
        this.u = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(d.b.p.i.g r17) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.p.i.d.w(d.b.p.i.g):void");
    }
}
