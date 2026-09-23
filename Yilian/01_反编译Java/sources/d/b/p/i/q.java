package d.b.p.i;

/* loaded from: classes.dex */
public final class q extends d.b.p.i.k implements android.widget.PopupWindow.OnDismissListener, android.widget.AdapterView.OnItemClickListener, d.b.p.i.m, android.view.View.OnKeyListener {
    public static final int v = d.b.g.abc_popup_menu_item_layout;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final d.b.p.i.g f1747c;

    /* renamed from: d, reason: collision with root package name */
    public final d.b.p.i.f f1748d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1749e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1750f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1751g;
    public final int h;
    public final d.b.q.k0 i;
    public android.widget.PopupWindow.OnDismissListener l;
    public android.view.View m;
    public android.view.View n;
    public d.b.p.i.m.a o;
    public android.view.ViewTreeObserver p;
    public boolean q;
    public boolean r;
    public int s;
    public boolean u;
    public final android.view.ViewTreeObserver.OnGlobalLayoutListener j = new d.b.p.i.q.a();
    public final android.view.View.OnAttachStateChangeListener k = new d.b.p.i.q.b();
    public int t = 0;

    public class a implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (d.b.p.i.q.this.b()) {
                d.b.p.i.q qVar = d.b.p.i.q.this;
                if (qVar.i.A) {
                    return;
                }
                android.view.View view = qVar.n;
                if (view == null || !view.isShown()) {
                    d.b.p.i.q.this.dismiss();
                } else {
                    d.b.p.i.q.this.i.d();
                }
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
            android.view.ViewTreeObserver viewTreeObserver = d.b.p.i.q.this.p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.b.p.i.q.this.p = view.getViewTreeObserver();
                }
                d.b.p.i.q qVar = d.b.p.i.q.this;
                qVar.p.removeGlobalOnLayoutListener(qVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(android.content.Context context, d.b.p.i.g gVar, android.view.View view, int i, int i2, boolean z) {
        this.b = context;
        this.f1747c = gVar;
        this.f1749e = z;
        this.f1748d = new d.b.p.i.f(gVar, android.view.LayoutInflater.from(context), this.f1749e, v);
        this.f1751g = i;
        this.h = i2;
        android.content.res.Resources resources = context.getResources();
        this.f1750f = java.lang.Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.b.d.abc_config_prefDialogWidth));
        this.m = view;
        this.i = new d.b.q.k0(this.b, null, this.f1751g, this.h);
        gVar.b(this, context);
    }

    @Override // d.b.p.i.m
    public void a(d.b.p.i.g gVar, boolean z) {
        if (gVar != this.f1747c) {
            return;
        }
        dismiss();
        d.b.p.i.m.a aVar = this.o;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // d.b.p.i.p
    public boolean b() {
        return !this.q && this.i.b();
    }

    @Override // d.b.p.i.p
    public void d() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        android.view.View view;
        boolean z = false;
        if (b()) {
            z = true;
        } else if (!this.q && (view = this.m) != null) {
            this.n = view;
            this.i.B.setOnDismissListener(this);
            d.b.q.k0 k0Var = this.i;
            k0Var.s = this;
            k0Var.s(true);
            android.view.View view2 = this.n;
            boolean z2 = this.p == null;
            android.view.ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.p = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            view2.addOnAttachStateChangeListener(this.k);
            d.b.q.k0 k0Var2 = this.i;
            k0Var2.r = view2;
            k0Var2.l = this.t;
            if (!this.r) {
                this.s = d.b.p.i.k.n(this.f1748d, null, this.b, this.f1750f);
                this.r = true;
            }
            this.i.r(this.s);
            this.i.B.setInputMethodMode(2);
            d.b.q.k0 k0Var3 = this.i;
            android.graphics.Rect rect = this.a;
            if (k0Var3 == null) {
                throw null;
            }
            k0Var3.z = rect != null ? new android.graphics.Rect(rect) : null;
            this.i.d();
            d.b.q.d0 d0Var = this.i.f1791c;
            d0Var.setOnKeyListener(this);
            if (this.u && this.f1747c.m != null) {
                android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) android.view.LayoutInflater.from(this.b).inflate(d.b.g.abc_popup_menu_header_item_layout, (android.view.ViewGroup) d0Var, false);
                android.widget.TextView textView = (android.widget.TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(this.f1747c.m);
                }
                frameLayout.setEnabled(false);
                d0Var.addHeaderView(frameLayout, null, false);
            }
            this.i.p(this.f1748d);
            this.i.d();
            z = true;
        }
        if (!z) {
            throw new java.lang.IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // d.b.p.i.p
    public void dismiss() {
        if (b()) {
            this.i.dismiss();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    @Override // d.b.p.i.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e(d.b.p.i.r r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L76
            d.b.p.i.l r0 = new d.b.p.i.l
            android.content.Context r3 = r9.b
            android.view.View r5 = r9.n
            boolean r6 = r9.f1749e
            int r7 = r9.f1751g
            int r8 = r9.h
            r2 = r0
            r4 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            d.b.p.i.m$a r2 = r9.o
            r0.d(r2)
            boolean r2 = d.b.p.i.k.v(r10)
            r0.h = r2
            d.b.p.i.k r3 = r0.j
            if (r3 == 0) goto L2a
            r3.p(r2)
        L2a:
            android.widget.PopupWindow$OnDismissListener r2 = r9.l
            r0.k = r2
            r2 = 0
            r9.l = r2
            d.b.p.i.g r2 = r9.f1747c
            r2.c(r1)
            d.b.q.k0 r2 = r9.i
            int r3 = r2.f1794f
            boolean r4 = r2.i
            if (r4 != 0) goto L40
            r2 = 0
            goto L42
        L40:
            int r2 = r2.f1795g
        L42:
            int r4 = r9.t
            android.view.View r5 = r9.m
            int r5 = d.g.m.s.o(r5)
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L5a
            android.view.View r4 = r9.m
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L5a:
            boolean r4 = r0.b()
            r5 = 1
            if (r4 == 0) goto L62
            goto L6b
        L62:
            android.view.View r4 = r0.f1744f
            if (r4 != 0) goto L68
            r0 = 0
            goto L6c
        L68:
            r0.e(r3, r2, r5, r5)
        L6b:
            r0 = 1
        L6c:
            if (r0 == 0) goto L76
            d.b.p.i.m$a r0 = r9.o
            if (r0 == 0) goto L75
            r0.b(r10)
        L75:
            return r5
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.p.i.q.e(d.b.p.i.r):boolean");
    }

    @Override // d.b.p.i.m
    public void f(boolean z) {
        this.r = false;
        d.b.p.i.f fVar = this.f1748d;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // d.b.p.i.p
    public android.widget.ListView g() {
        return this.i.f1791c;
    }

    @Override // d.b.p.i.m
    public boolean h() {
        return false;
    }

    @Override // d.b.p.i.m
    public void k(d.b.p.i.m.a aVar) {
        this.o = aVar;
    }

    @Override // d.b.p.i.k
    public void l(d.b.p.i.g gVar) {
    }

    @Override // d.b.p.i.k
    public void o(android.view.View view) {
        this.m = view;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.f1747c.c(true);
        android.view.ViewTreeObserver viewTreeObserver = this.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.p = this.n.getViewTreeObserver();
            }
            this.p.removeGlobalOnLayoutListener(this.j);
            this.p = null;
        }
        this.n.removeOnAttachStateChangeListener(this.k);
        android.widget.PopupWindow.OnDismissListener onDismissListener = this.l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f1748d.f1722c = z;
    }

    @Override // d.b.p.i.k
    public void q(int i) {
        this.t = i;
    }

    @Override // d.b.p.i.k
    public void r(int i) {
        this.i.f1794f = i;
    }

    @Override // d.b.p.i.k
    public void s(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // d.b.p.i.k
    public void t(boolean z) {
        this.u = z;
    }

    @Override // d.b.p.i.k
    public void u(int i) {
        d.b.q.k0 k0Var = this.i;
        k0Var.f1795g = i;
        k0Var.i = true;
    }
}
