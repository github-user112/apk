package d.b.q;

/* loaded from: classes.dex */
public class y0 implements android.view.View.OnLongClickListener, android.view.View.OnHoverListener, android.view.View.OnAttachStateChangeListener {
    public static d.b.q.y0 j;
    public static d.b.q.y0 k;
    public final android.view.View a;
    public final java.lang.CharSequence b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1858c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.Runnable f1859d = new d.b.q.y0.a();

    /* renamed from: e, reason: collision with root package name */
    public final java.lang.Runnable f1860e = new d.b.q.y0.b();

    /* renamed from: f, reason: collision with root package name */
    public int f1861f;

    /* renamed from: g, reason: collision with root package name */
    public int f1862g;
    public d.b.q.z0 h;
    public boolean i;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws android.content.res.Resources.NotFoundException {
            d.b.q.y0.this.d(false);
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.q.y0.this.b();
        }
    }

    public y0(android.view.View view, java.lang.CharSequence charSequence) {
        this.a = view;
        this.b = charSequence;
        this.f1858c = d.g.m.u.c(android.view.ViewConfiguration.get(view.getContext()));
        a();
        this.a.setOnLongClickListener(this);
        this.a.setOnHoverListener(this);
    }

    public static void c(d.b.q.y0 y0Var) {
        d.b.q.y0 y0Var2 = j;
        if (y0Var2 != null) {
            y0Var2.a.removeCallbacks(y0Var2.f1859d);
        }
        j = y0Var;
        if (y0Var != null) {
            y0Var.a.postDelayed(y0Var.f1859d, android.view.ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        this.f1861f = Integer.MAX_VALUE;
        this.f1862g = Integer.MAX_VALUE;
    }

    public void b() {
        if (k == this) {
            k = null;
            d.b.q.z0 z0Var = this.h;
            if (z0Var != null) {
                z0Var.a();
                this.h = null;
                a();
                this.a.removeOnAttachStateChangeListener(this);
            } else {
                android.util.Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            c(null);
        }
        this.a.removeCallbacks(this.f1860e);
    }

    public void d(boolean z) throws android.content.res.Resources.NotFoundException {
        int height;
        int i;
        long longPressTimeout;
        if (d.g.m.s.z(this.a)) {
            c(null);
            d.b.q.y0 y0Var = k;
            if (y0Var != null) {
                y0Var.b();
            }
            k = this;
            this.i = z;
            d.b.q.z0 z0Var = new d.b.q.z0(this.a.getContext());
            this.h = z0Var;
            android.view.View view = this.a;
            int width = this.f1861f;
            int i2 = this.f1862g;
            boolean z2 = this.i;
            java.lang.CharSequence charSequence = this.b;
            if (z0Var.b.getParent() != null) {
                z0Var.a();
            }
            z0Var.f1863c.setText(charSequence);
            android.view.WindowManager.LayoutParams layoutParams = z0Var.f1864d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = z0Var.a.getResources().getDimensionPixelOffset(d.b.d.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = z0Var.a.getResources().getDimensionPixelOffset(d.b.d.tooltip_precise_anchor_extra_offset);
                height = i2 + dimensionPixelOffset2;
                i = i2 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = z0Var.a.getResources().getDimensionPixelOffset(z2 ? d.b.d.tooltip_y_offset_touch : d.b.d.tooltip_y_offset_non_touch);
            android.view.View rootView = view.getRootView();
            android.view.ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof android.view.WindowManager.LayoutParams) || ((android.view.WindowManager.LayoutParams) layoutParams2).type != 2) {
                android.content.Context context = view.getContext();
                while (true) {
                    if (!(context instanceof android.content.ContextWrapper)) {
                        break;
                    }
                    if (context instanceof android.app.Activity) {
                        rootView = ((android.app.Activity) context).getWindow().getDecorView();
                        break;
                    }
                    context = ((android.content.ContextWrapper) context).getBaseContext();
                }
            }
            if (rootView == null) {
                android.util.Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame(z0Var.f1865e);
                android.graphics.Rect rect = z0Var.f1865e;
                if (rect.left < 0 && rect.top < 0) {
                    android.content.res.Resources resources = z0Var.a.getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    android.util.DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    z0Var.f1865e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(z0Var.f1867g);
                view.getLocationOnScreen(z0Var.f1866f);
                int[] iArr = z0Var.f1866f;
                int i3 = iArr[0];
                int[] iArr2 = z0Var.f1867g;
                iArr[0] = i3 - iArr2[0];
                iArr[1] = iArr[1] - iArr2[1];
                layoutParams.x = (iArr[0] + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                z0Var.b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = z0Var.b.getMeasuredHeight();
                int[] iArr3 = z0Var.f1866f;
                int i4 = ((iArr3[1] + i) - dimensionPixelOffset3) - measuredHeight;
                int i5 = iArr3[1] + height + dimensionPixelOffset3;
                if (!z2 ? measuredHeight + i5 <= z0Var.f1865e.height() : i4 < 0) {
                    layoutParams.y = i4;
                } else {
                    layoutParams.y = i5;
                }
            }
            ((android.view.WindowManager) z0Var.a.getSystemService("window")).addView(z0Var.b, z0Var.f1864d);
            this.a.addOnAttachStateChangeListener(this);
            if (this.i) {
                longPressTimeout = 2500;
            } else {
                longPressTimeout = ((this.a.getWindowSystemUiVisibility() & 1) == 1 ? com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS : com.google.android.exoplayer2.C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) - android.view.ViewConfiguration.getLongPressTimeout();
            }
            this.a.removeCallbacks(this.f1860e);
            this.a.postDelayed(this.f1860e, longPressTimeout);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(android.view.View view, android.view.MotionEvent motionEvent) {
        boolean z;
        if (this.h != null && this.i) {
            return false;
        }
        android.view.accessibility.AccessibilityManager accessibilityManager = (android.view.accessibility.AccessibilityManager) this.a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                a();
                b();
            }
        } else if (this.a.isEnabled() && this.h == null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (java.lang.Math.abs(x - this.f1861f) > this.f1858c || java.lang.Math.abs(y - this.f1862g) > this.f1858c) {
                this.f1861f = x;
                this.f1862g = y;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                c(this);
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(android.view.View view) throws android.content.res.Resources.NotFoundException {
        this.f1861f = view.getWidth() / 2;
        this.f1862g = view.getHeight() / 2;
        d(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(android.view.View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(android.view.View view) {
        b();
    }
}
