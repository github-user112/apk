package d.b.q;

/* loaded from: classes.dex */
public class i0 implements d.b.p.i.p {
    public static java.lang.reflect.Method C;
    public static java.lang.reflect.Method D;
    public static java.lang.reflect.Method F;
    public boolean A;
    public android.widget.PopupWindow B;
    public android.content.Context a;
    public android.widget.ListAdapter b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.q.d0 f1791c;

    /* renamed from: f, reason: collision with root package name */
    public int f1794f;

    /* renamed from: g, reason: collision with root package name */
    public int f1795g;
    public boolean i;
    public boolean j;
    public boolean k;
    public android.database.DataSetObserver q;
    public android.view.View r;
    public android.widget.AdapterView.OnItemClickListener s;
    public final android.os.Handler x;
    public android.graphics.Rect z;

    /* renamed from: d, reason: collision with root package name */
    public int f1792d = -2;

    /* renamed from: e, reason: collision with root package name */
    public int f1793e = -2;
    public int h = 1002;
    public int l = 0;
    public boolean m = false;
    public boolean n = false;
    public int o = Integer.MAX_VALUE;
    public int p = 0;
    public final d.b.q.i0.e t = new d.b.q.i0.e();
    public final d.b.q.i0.d u = new d.b.q.i0.d();
    public final d.b.q.i0.c v = new d.b.q.i0.c();
    public final d.b.q.i0.a w = new d.b.q.i0.a();
    public final android.graphics.Rect y = new android.graphics.Rect();

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.q.d0 d0Var = d.b.q.i0.this.f1791c;
            if (d0Var != null) {
                d0Var.setListSelectionHidden(true);
                d0Var.requestLayout();
            }
        }
    }

    public class b extends android.database.DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (d.b.q.i0.this.b()) {
                d.b.q.i0.this.d();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            d.b.q.i0.this.dismiss();
        }
    }

    public class c implements android.widget.AbsListView.OnScrollListener {
        public c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(android.widget.AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(android.widget.AbsListView absListView, int i) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (i == 1) {
                if ((d.b.q.i0.this.B.getInputMethodMode() == 2) || d.b.q.i0.this.B.getContentView() == null) {
                    return;
                }
                d.b.q.i0 i0Var = d.b.q.i0.this;
                i0Var.x.removeCallbacks(i0Var.t);
                d.b.q.i0.this.t.run();
            }
        }
    }

    public class d implements android.view.View.OnTouchListener {
        public d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
            android.widget.PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = d.b.q.i0.this.B) != null && popupWindow.isShowing() && x >= 0 && x < d.b.q.i0.this.B.getWidth() && y >= 0 && y < d.b.q.i0.this.B.getHeight()) {
                d.b.q.i0 i0Var = d.b.q.i0.this;
                i0Var.x.postDelayed(i0Var.t, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            d.b.q.i0 i0Var2 = d.b.q.i0.this;
            i0Var2.x.removeCallbacks(i0Var2.t);
            return false;
        }
    }

    public class e implements java.lang.Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            d.b.q.d0 d0Var = d.b.q.i0.this.f1791c;
            if (d0Var == null || !d.g.m.s.z(d0Var) || d.b.q.i0.this.f1791c.getCount() <= d.b.q.i0.this.f1791c.getChildCount()) {
                return;
            }
            int childCount = d.b.q.i0.this.f1791c.getChildCount();
            d.b.q.i0 i0Var = d.b.q.i0.this;
            if (childCount <= i0Var.o) {
                i0Var.B.setInputMethodMode(2);
                d.b.q.i0.this.d();
            }
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT <= 28) {
            try {
                C = android.widget.PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", java.lang.Boolean.TYPE);
            } catch (java.lang.NoSuchMethodException unused) {
                android.util.Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                F = android.widget.PopupWindow.class.getDeclaredMethod("setEpicenterBounds", android.graphics.Rect.class);
            } catch (java.lang.NoSuchMethodException unused2) {
                android.util.Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (android.os.Build.VERSION.SDK_INT <= 23) {
            try {
                D = android.widget.PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", android.view.View.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE);
            } catch (java.lang.NoSuchMethodException unused3) {
                android.util.Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public i0(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        this.a = context;
        this.x = new android.os.Handler(context.getMainLooper());
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ListPopupWindow, i, i2);
        this.f1794f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.b.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.b.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1795g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        d.b.q.n nVar = new d.b.q.n(context, attributeSet, i, i2);
        this.B = nVar;
        nVar.setInputMethodMode(1);
    }

    public int a() {
        return this.f1794f;
    }

    @Override // d.b.p.i.p
    public boolean b() {
        return this.B.isShowing();
    }

    @Override // d.b.p.i.p
    public void d() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i;
        int maxAvailableHeight;
        int paddingBottom;
        d.b.q.d0 d0Var;
        int i2;
        if (this.f1791c == null) {
            d.b.q.d0 d0VarQ = q(this.a, !this.A);
            this.f1791c = d0VarQ;
            d0VarQ.setAdapter(this.b);
            this.f1791c.setOnItemClickListener(this.s);
            this.f1791c.setFocusable(true);
            this.f1791c.setFocusableInTouchMode(true);
            this.f1791c.setOnItemSelectedListener(new d.b.q.h0(this));
            this.f1791c.setOnScrollListener(this.v);
            this.B.setContentView(this.f1791c);
        }
        android.graphics.drawable.Drawable background = this.B.getBackground();
        if (background != null) {
            background.getPadding(this.y);
            android.graphics.Rect rect = this.y;
            int i3 = rect.top;
            i = rect.bottom + i3;
            if (!this.i) {
                this.f1795g = -i3;
            }
        } else {
            this.y.setEmpty();
            i = 0;
        }
        boolean z = this.B.getInputMethodMode() == 2;
        android.view.View view = this.r;
        int i4 = this.f1795g;
        if (android.os.Build.VERSION.SDK_INT <= 23) {
            java.lang.reflect.Method method = D;
            if (method != null) {
                try {
                    maxAvailableHeight = ((java.lang.Integer) method.invoke(this.B, view, java.lang.Integer.valueOf(i4), java.lang.Boolean.valueOf(z))).intValue();
                } catch (java.lang.Exception unused) {
                    android.util.Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            } else {
                maxAvailableHeight = this.B.getMaxAvailableHeight(view, i4);
            }
        } else {
            maxAvailableHeight = this.B.getMaxAvailableHeight(view, i4, z);
        }
        if (this.m || this.f1792d == -1) {
            paddingBottom = maxAvailableHeight + i;
        } else {
            int i5 = this.f1793e;
            if (i5 != -2) {
                i2 = 1073741824;
                if (i5 == -1) {
                    int i6 = this.a.getResources().getDisplayMetrics().widthPixels;
                    android.graphics.Rect rect2 = this.y;
                    i5 = i6 - (rect2.left + rect2.right);
                }
            } else {
                int i7 = this.a.getResources().getDisplayMetrics().widthPixels;
                android.graphics.Rect rect3 = this.y;
                i5 = i7 - (rect3.left + rect3.right);
                i2 = Integer.MIN_VALUE;
            }
            int iA = this.f1791c.a(android.view.View.MeasureSpec.makeMeasureSpec(i5, i2), maxAvailableHeight - 0, -1);
            paddingBottom = iA + (iA > 0 ? this.f1791c.getPaddingBottom() + this.f1791c.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = this.B.getInputMethodMode() == 2;
        d.b.k.r.w0(this.B, this.h);
        if (this.B.isShowing()) {
            if (d.g.m.s.z(this.r)) {
                int width = this.f1793e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.r.getWidth();
                }
                int i8 = this.f1792d;
                if (i8 == -1) {
                    if (!z2) {
                        paddingBottom = -1;
                    }
                    if (z2) {
                        this.B.setWidth(this.f1793e == -1 ? -1 : 0);
                        this.B.setHeight(0);
                    } else {
                        this.B.setWidth(this.f1793e == -1 ? -1 : 0);
                        this.B.setHeight(-1);
                    }
                } else if (i8 != -2) {
                    paddingBottom = i8;
                }
                this.B.setOutsideTouchable((this.n || this.m) ? false : true);
                this.B.update(this.r, this.f1794f, this.f1795g, width < 0 ? -1 : width, paddingBottom < 0 ? -1 : paddingBottom);
                return;
            }
            return;
        }
        int width2 = this.f1793e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.r.getWidth();
        }
        int i9 = this.f1792d;
        if (i9 == -1) {
            paddingBottom = -1;
        } else if (i9 != -2) {
            paddingBottom = i9;
        }
        this.B.setWidth(width2);
        this.B.setHeight(paddingBottom);
        t(true);
        this.B.setOutsideTouchable((this.n || this.m) ? false : true);
        this.B.setTouchInterceptor(this.u);
        if (this.k) {
            d.b.k.r.q0(this.B, this.j);
        }
        if (android.os.Build.VERSION.SDK_INT <= 28) {
            java.lang.reflect.Method method2 = F;
            if (method2 != null) {
                try {
                    method2.invoke(this.B, this.z);
                } catch (java.lang.Exception e2) {
                    android.util.Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.B.setEpicenterBounds(this.z);
        }
        android.widget.PopupWindow popupWindow = this.B;
        android.view.View view2 = this.r;
        int width3 = this.f1794f;
        int i10 = this.f1795g;
        int i11 = this.l;
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view2, width3, i10, i11);
        } else {
            if ((d.b.k.r.v(i11, d.g.m.s.o(view2)) & 7) == 5) {
                width3 -= popupWindow.getWidth() - view2.getWidth();
            }
            popupWindow.showAsDropDown(view2, width3, i10);
        }
        this.f1791c.setSelection(-1);
        if ((!this.A || this.f1791c.isInTouchMode()) && (d0Var = this.f1791c) != null) {
            d0Var.setListSelectionHidden(true);
            d0Var.requestLayout();
        }
        if (this.A) {
            return;
        }
        this.x.post(this.w);
    }

    @Override // d.b.p.i.p
    public void dismiss() {
        this.B.dismiss();
        this.B.setContentView(null);
        this.f1791c = null;
        this.x.removeCallbacks(this.t);
    }

    public android.graphics.drawable.Drawable f() {
        return this.B.getBackground();
    }

    @Override // d.b.p.i.p
    public android.widget.ListView g() {
        return this.f1791c;
    }

    public void i(android.graphics.drawable.Drawable drawable) {
        this.B.setBackgroundDrawable(drawable);
    }

    public void j(int i) {
        this.f1795g = i;
        this.i = true;
    }

    public void l(int i) {
        this.f1794f = i;
    }

    public int n() {
        if (this.i) {
            return this.f1795g;
        }
        return 0;
    }

    public void p(android.widget.ListAdapter listAdapter) {
        android.database.DataSetObserver dataSetObserver = this.q;
        if (dataSetObserver == null) {
            this.q = new d.b.q.i0.b();
        } else {
            android.widget.ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.q);
        }
        d.b.q.d0 d0Var = this.f1791c;
        if (d0Var != null) {
            d0Var.setAdapter(this.b);
        }
    }

    public d.b.q.d0 q(android.content.Context context, boolean z) {
        return new d.b.q.d0(context, z);
    }

    public void r(int i) {
        android.graphics.drawable.Drawable background = this.B.getBackground();
        if (background == null) {
            this.f1793e = i;
            return;
        }
        background.getPadding(this.y);
        android.graphics.Rect rect = this.y;
        this.f1793e = rect.left + rect.right + i;
    }

    public void s(boolean z) {
        this.A = z;
        this.B.setFocusable(z);
    }

    public final void t(boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT > 28) {
            this.B.setIsClippedToScreen(z);
            return;
        }
        java.lang.reflect.Method method = C;
        if (method != null) {
            try {
                method.invoke(this.B, java.lang.Boolean.valueOf(z));
            } catch (java.lang.Exception unused) {
                android.util.Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }
}
