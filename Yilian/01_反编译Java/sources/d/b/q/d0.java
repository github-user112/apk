package d.b.q;

/* loaded from: classes.dex */
public class d0 extends android.widget.ListView {
    public final android.graphics.Rect a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f1763c;

    /* renamed from: d, reason: collision with root package name */
    public int f1764d;

    /* renamed from: e, reason: collision with root package name */
    public int f1765e;

    /* renamed from: f, reason: collision with root package name */
    public int f1766f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.reflect.Field f1767g;
    public d.b.q.d0.a h;
    public boolean i;
    public boolean j;
    public boolean k;
    public d.g.m.v l;
    public d.g.n.c m;
    public d.b.q.d0.b n;

    public static class a extends d.b.m.a.c {
        public boolean b;

        public a(android.graphics.drawable.Drawable drawable) {
            super(drawable);
            this.b = true;
        }

        @Override // d.b.m.a.c, android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            if (this.b) {
                this.a.draw(canvas);
            }
        }

        @Override // d.b.m.a.c, android.graphics.drawable.Drawable
        public void setHotspot(float f2, float f3) {
            if (this.b) {
                d.b.k.r.l0(this.a, f2, f3);
            }
        }

        @Override // d.b.m.a.c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.b) {
                d.b.k.r.m0(this.a, i, i2, i3, i4);
            }
        }

        @Override // d.b.m.a.c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.b) {
                return this.a.setState(iArr);
            }
            return false;
        }

        @Override // d.b.m.a.c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.q.d0 d0Var = d.b.q.d0.this;
            d0Var.n = null;
            d0Var.drawableStateChanged();
        }
    }

    public d0(android.content.Context context, boolean z) throws java.lang.NoSuchFieldException {
        super(context, null, d.b.a.dropDownListViewStyle);
        this.a = new android.graphics.Rect();
        this.b = 0;
        this.f1763c = 0;
        this.f1764d = 0;
        this.f1765e = 0;
        this.j = z;
        setCacheColorHint(0);
        try {
            java.lang.reflect.Field declaredField = android.widget.AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1767g = declaredField;
            declaredField.setAccessible(true);
        } catch (java.lang.NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        d.b.q.d0.a aVar = this.h;
        if (aVar != null) {
            aVar.b = z;
        }
    }

    public int a(int i, int i2, int i3) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        android.graphics.drawable.Drawable divider = getDivider();
        android.widget.ListAdapter adapter = getAdapter();
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return measuredHeight;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        android.view.View view = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < count) {
            int itemViewType = adapter.getItemViewType(i4);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = adapter.getView(i4, view, this);
            android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i7 = layoutParams.height;
            view.measure(i, i7 > 0 ? android.view.View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i4 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i2) {
                return (i3 < 0 || i4 <= i3 || i6 <= 0 || measuredHeight == i2) ? i2 : i6;
            }
            if (i3 >= 0 && i4 >= i3) {
                i6 = measuredHeight;
            }
            i4++;
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x012f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(android.view.MotionEvent r17, int r18) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.d0.b(android.view.MotionEvent, int):boolean");
    }

    public final void c() {
        android.graphics.drawable.Drawable selector = getSelector();
        if (selector != null && this.k && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        android.graphics.drawable.Drawable selector;
        if (!this.a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.a);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.n != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.j && this.i) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.n = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        if (android.os.Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.n == null) {
            d.b.q.d0.b bVar = new d.b.q.d0.b();
            this.n = bVar;
            d.b.q.d0.this.post(bVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                android.view.View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1766f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        d.b.q.d0.b bVar = this.n;
        if (bVar != null) {
            d.b.q.d0 d0Var = d.b.q.d0.this;
            d0Var.n = null;
            d0Var.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.i = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(android.graphics.drawable.Drawable drawable) {
        d.b.q.d0.a aVar = drawable != null ? new d.b.q.d0.a(drawable) : null;
        this.h = aVar;
        super.setSelector(aVar);
        android.graphics.Rect rect = new android.graphics.Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.b = rect.left;
        this.f1763c = rect.top;
        this.f1764d = rect.right;
        this.f1765e = rect.bottom;
    }
}
