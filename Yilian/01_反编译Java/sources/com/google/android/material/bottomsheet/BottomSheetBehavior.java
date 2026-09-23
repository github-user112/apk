package com.google.android.material.bottomsheet;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends android.view.View> extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<V> {
    public boolean a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public int f221c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f222d;

    /* renamed from: e, reason: collision with root package name */
    public int f223e;

    /* renamed from: f, reason: collision with root package name */
    public int f224f;

    /* renamed from: g, reason: collision with root package name */
    public int f225g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public int l;
    public d.i.b.a m;
    public boolean n;
    public int o;
    public boolean p;
    public int q;
    public java.lang.ref.WeakReference<V> r;
    public java.lang.ref.WeakReference<android.view.View> s;
    public android.view.VelocityTracker t;
    public int u;
    public int v;
    public boolean w;
    public java.util.Map<android.view.View, java.lang.Integer> x;
    public final d.i.b.a.c y;

    public class a extends d.i.b.a.c {
        public a() {
        }

        @Override // d.i.b.a.c
        public int a(android.view.View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // d.i.b.a.c
        public int b(android.view.View view, int i, int i2) {
            int iC = com.google.android.material.bottomsheet.BottomSheetBehavior.this.C();
            com.google.android.material.bottomsheet.BottomSheetBehavior bottomSheetBehavior = com.google.android.material.bottomsheet.BottomSheetBehavior.this;
            return d.b.k.r.h(i, iC, bottomSheetBehavior.j ? bottomSheetBehavior.q : bottomSheetBehavior.i);
        }

        @Override // d.i.b.a.c
        public int d(android.view.View view) {
            com.google.android.material.bottomsheet.BottomSheetBehavior bottomSheetBehavior = com.google.android.material.bottomsheet.BottomSheetBehavior.this;
            return bottomSheetBehavior.j ? bottomSheetBehavior.q : bottomSheetBehavior.i;
        }

        @Override // d.i.b.a.c
        public void f(int i) {
            if (i == 1) {
                com.google.android.material.bottomsheet.BottomSheetBehavior.this.E(1);
            }
        }

        @Override // d.i.b.a.c
        public void g(android.view.View view, int i, int i2, int i3, int i4) {
            com.google.android.material.bottomsheet.BottomSheetBehavior.this.r.get();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
        
            if (r7 < java.lang.Math.abs(r7 - r8.i)) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
        
            if (java.lang.Math.abs(r7 - r1) < java.lang.Math.abs(r7 - r5.a.i)) goto L37;
         */
        @Override // d.i.b.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void h(android.view.View r6, float r7, float r8) {
            /*
                r5 = this;
                r0 = 3
                r1 = 0
                r2 = 4
                int r3 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r3 >= 0) goto L1d
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = r7.a
                if (r8 == 0) goto L11
            Ld:
                int r7 = r7.f225g
                goto La4
            L11:
                int r7 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r8 = r8.h
                if (r7 <= r8) goto L8a
                goto La1
            L1d:
                com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r4 = r3.j
                if (r4 == 0) goto L45
                boolean r3 = r3.F(r6, r8)
                if (r3 == 0) goto L45
                int r3 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r4 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r4 = r4.i
                if (r3 > r4) goto L3f
                float r3 = java.lang.Math.abs(r7)
                float r4 = java.lang.Math.abs(r8)
                int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r3 >= 0) goto L45
            L3f:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.q
                r0 = 5
                goto La4
            L45:
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r1 == 0) goto L5c
                float r7 = java.lang.Math.abs(r7)
                float r8 = java.lang.Math.abs(r8)
                int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
                if (r7 <= 0) goto L56
                goto L5c
            L56:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.i
                r0 = 4
                goto La4
            L5c:
                int r7 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r1 = r8.a
                if (r1 == 0) goto L7c
                int r8 = r8.f225g
                int r8 = r7 - r8
                int r8 = java.lang.Math.abs(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior r1 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r1 = r1.i
                int r7 = r7 - r1
                int r7 = java.lang.Math.abs(r7)
                if (r8 >= r7) goto L56
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                goto Ld
            L7c:
                int r1 = r8.h
                if (r7 >= r1) goto L8c
                int r8 = r8.i
                int r8 = r7 - r8
                int r8 = java.lang.Math.abs(r8)
                if (r7 >= r8) goto L9d
            L8a:
                r7 = 0
                goto La4
            L8c:
                int r8 = r7 - r1
                int r8 = java.lang.Math.abs(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r0.i
                int r7 = r7 - r0
                int r7 = java.lang.Math.abs(r7)
                if (r8 >= r7) goto L56
            L9d:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r8 = r7.h
            La1:
                r7 = 6
                r7 = r8
                r0 = 6
            La4:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                d.i.b.a r8 = r8.m
                int r1 = r6.getLeft()
                boolean r7 = r8.t(r1, r7)
                if (r7 == 0) goto Lc3
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r8 = 2
                r7.E(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior$c r7 = new com.google.android.material.bottomsheet.BottomSheetBehavior$c
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r7.<init>(r6, r0)
                d.g.m.s.I(r6, r7)
                goto Lc8
            Lc3:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r6.E(r0)
            Lc8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.a.h(android.view.View, float, float):void");
        }

        @Override // d.i.b.a.c
        public boolean i(android.view.View view, int i) {
            java.lang.ref.WeakReference<V> weakReference;
            android.view.View view2;
            com.google.android.material.bottomsheet.BottomSheetBehavior bottomSheetBehavior = com.google.android.material.bottomsheet.BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.l;
            if (i2 == 1 || bottomSheetBehavior.w) {
                return false;
            }
            return ((i2 == 3 && bottomSheetBehavior.u == i && (view2 = bottomSheetBehavior.s.get()) != null && view2.canScrollVertically(-1)) || (weakReference = com.google.android.material.bottomsheet.BottomSheetBehavior.this.r) == null || weakReference.get() != view) ? false : true;
        }
    }

    public static class b extends d.i.a.a {
        public static final android.os.Parcelable.Creator<com.google.android.material.bottomsheet.BottomSheetBehavior.b> CREATOR = new com.google.android.material.bottomsheet.BottomSheetBehavior.b.a();

        /* renamed from: c, reason: collision with root package name */
        public final int f226c;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<com.google.android.material.bottomsheet.BottomSheetBehavior.b> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new com.google.android.material.bottomsheet.BottomSheetBehavior.b(parcel, (java.lang.ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new com.google.android.material.bottomsheet.BottomSheetBehavior.b[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public com.google.android.material.bottomsheet.BottomSheetBehavior.b createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new com.google.android.material.bottomsheet.BottomSheetBehavior.b(parcel, classLoader);
            }
        }

        public b(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f226c = parcel.readInt();
        }

        public b(android.os.Parcelable parcelable, int i) {
            super(parcelable);
            this.f226c = i;
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.f226c);
        }
    }

    public class c implements java.lang.Runnable {
        public final android.view.View a;
        public final int b;

        public c(android.view.View view, int i) {
            this.a = view;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.i.b.a aVar = com.google.android.material.bottomsheet.BottomSheetBehavior.this.m;
            if (aVar == null || !aVar.i(true)) {
                com.google.android.material.bottomsheet.BottomSheetBehavior.this.E(this.b);
            } else {
                d.g.m.s.I(this.a, this);
            }
        }
    }

    public BottomSheetBehavior() {
        this.a = true;
        this.l = 4;
        this.y = new com.google.android.material.bottomsheet.BottomSheetBehavior.a();
    }

    public BottomSheetBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.a = true;
        this.l = 4;
        this.y = new com.google.android.material.bottomsheet.BottomSheetBehavior.a();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.BottomSheetBehavior_Layout);
        android.util.TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(e.c.a.b.i.BottomSheetBehavior_Layout_behavior_peekHeight);
        D((typedValuePeekValue == null || (i = typedValuePeekValue.data) != -1) ? typedArrayObtainStyledAttributes.getDimensionPixelSize(e.c.a.b.i.BottomSheetBehavior_Layout_behavior_peekHeight, -1) : i);
        this.j = typedArrayObtainStyledAttributes.getBoolean(e.c.a.b.i.BottomSheetBehavior_Layout_behavior_hideable, false);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(e.c.a.b.i.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.a != z) {
            this.a = z;
            if (this.r != null) {
                A();
            }
            E((this.a && this.l == 6) ? 3 : this.l);
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(e.c.a.b.i.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        typedArrayObtainStyledAttributes.recycle();
        this.b = android.view.ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public final void A() {
        this.i = this.a ? java.lang.Math.max(this.q - this.f224f, this.f225g) : this.q - this.f224f;
    }

    public android.view.View B(android.view.View view) {
        if (d.g.m.s.B(view)) {
            return view;
        }
        if (!(view instanceof android.view.ViewGroup)) {
            return null;
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            android.view.View viewB = B(viewGroup.getChildAt(i));
            if (viewB != null) {
                return viewB;
            }
        }
        return null;
    }

    public final int C() {
        if (this.a) {
            return this.f225g;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto Lc
            boolean r4 = r3.f222d
            if (r4 != 0) goto L15
            r3.f222d = r0
            goto L24
        Lc:
            boolean r2 = r3.f222d
            if (r2 != 0) goto L17
            int r2 = r3.f221c
            if (r2 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L24
        L17:
            r3.f222d = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.f221c = r1
            int r1 = r3.q
            int r1 = r1 - r4
            r3.i = r1
        L24:
            if (r0 == 0) goto L3a
            int r4 = r3.l
            r0 = 4
            if (r4 != r0) goto L3a
            java.lang.ref.WeakReference<V extends android.view.View> r4 = r3.r
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L3a
            r4.requestLayout()
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.D(int):void");
    }

    public void E(int i) {
        boolean z;
        if (this.l == i) {
            return;
        }
        this.l = i;
        if (i != 6 && i != 3) {
            z = (i == 5 || i == 4) ? false : true;
            this.r.get();
        }
        G(z);
        this.r.get();
    }

    public boolean F(android.view.View view, float f2) {
        if (this.k) {
            return true;
        }
        if (view.getTop() < this.i) {
            return false;
        }
        return java.lang.Math.abs(((f2 * 0.1f) + ((float) view.getTop())) - ((float) this.i)) / ((float) this.f221c) > 0.5f;
    }

    public final void G(boolean z) {
        int iIntValue;
        java.lang.ref.WeakReference<V> weakReference = this.r;
        if (weakReference == null) {
            return;
        }
        android.view.ViewParent parent = weakReference.get().getParent();
        if (parent instanceof androidx.coordinatorlayout.widget.CoordinatorLayout) {
            androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout = (androidx.coordinatorlayout.widget.CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.x != null) {
                    return;
                } else {
                    this.x = new java.util.HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                android.view.View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.r.get()) {
                    java.util.Map<android.view.View, java.lang.Integer> map = this.x;
                    if (z) {
                        map.put(childAt, java.lang.Integer.valueOf(childAt.getImportantForAccessibility()));
                        iIntValue = 4;
                    } else if (map != null && map.containsKey(childAt)) {
                        iIntValue = this.x.get(childAt).intValue();
                    }
                    d.g.m.s.S(childAt, iIntValue);
                }
            }
            if (z) {
                return;
            }
            this.x = null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean i(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
        d.i.b.a aVar;
        if (!v.isShown()) {
            this.n = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.u = -1;
            android.view.VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.t = null;
            }
        }
        if (this.t == null) {
            this.t = android.view.VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.v = (int) motionEvent.getY();
            java.lang.ref.WeakReference<android.view.View> weakReference = this.s;
            android.view.View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.l(view, x, this.v)) {
                this.u = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.w = true;
            }
            this.n = this.u == -1 && !coordinatorLayout.l(v, x, this.v);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.w = false;
            this.u = -1;
            if (this.n) {
                this.n = false;
                return false;
            }
        }
        if (!this.n && (aVar = this.m) != null && aVar.u(motionEvent)) {
            return true;
        }
        java.lang.ref.WeakReference<android.view.View> weakReference2 = this.s;
        android.view.View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.n || this.l == 1 || coordinatorLayout.l(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.m == null || java.lang.Math.abs(((float) this.v) - motionEvent.getY()) <= ((float) this.m.b)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, int r7) {
        /*
            r4 = this;
            boolean r0 = d.g.m.s.m(r5)
            r1 = 1
            if (r0 == 0) goto L10
            boolean r0 = r6.getFitsSystemWindows()
            if (r0 != 0) goto L10
            r6.setFitsSystemWindows(r1)
        L10:
            int r0 = r6.getTop()
            r5.q(r6, r7)
            int r7 = r5.getHeight()
            r4.q = r7
            boolean r7 = r4.f222d
            if (r7 == 0) goto L43
            int r7 = r4.f223e
            if (r7 != 0) goto L31
            android.content.res.Resources r7 = r5.getResources()
            int r2 = e.c.a.b.c.design_bottom_sheet_peek_height_min
            int r7 = r7.getDimensionPixelSize(r2)
            r4.f223e = r7
        L31:
            int r7 = r4.f223e
            int r2 = r4.q
            int r3 = r5.getWidth()
            int r3 = r3 * 9
            int r3 = r3 / 16
            int r2 = r2 - r3
            int r7 = java.lang.Math.max(r7, r2)
            goto L45
        L43:
            int r7 = r4.f221c
        L45:
            r4.f224f = r7
            r7 = 0
            int r2 = r4.q
            int r3 = r6.getHeight()
            int r2 = r2 - r3
            int r7 = java.lang.Math.max(r7, r2)
            r4.f225g = r7
            int r7 = r4.q
            r2 = 2
            int r7 = r7 / r2
            r4.h = r7
            r4.A()
            int r7 = r4.l
            r3 = 3
            if (r7 != r3) goto L68
            int r7 = r4.C()
            goto L7f
        L68:
            r3 = 6
            if (r7 != r3) goto L6e
            int r7 = r4.h
            goto L7f
        L6e:
            boolean r3 = r4.j
            if (r3 == 0) goto L78
            r3 = 5
            if (r7 != r3) goto L78
            int r7 = r4.q
            goto L7f
        L78:
            int r7 = r4.l
            r3 = 4
            if (r7 != r3) goto L83
            int r7 = r4.i
        L7f:
            d.g.m.s.F(r6, r7)
            goto L8f
        L83:
            if (r7 == r1) goto L87
            if (r7 != r2) goto L8f
        L87:
            int r7 = r6.getTop()
            int r0 = r0 - r7
            d.g.m.s.F(r6, r0)
        L8f:
            d.i.b.a r7 = r4.m
            if (r7 != 0) goto La0
            d.i.b.a$c r7 = r4.y
            d.i.b.a r0 = new d.i.b.a
            android.content.Context r2 = r5.getContext()
            r0.<init>(r2, r5, r7)
            r4.m = r0
        La0:
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
            r5.<init>(r6)
            r4.r = r5
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
            android.view.View r6 = r4.B(r6)
            r5.<init>(r6)
            r4.s = r5
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.j(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, float f2, float f3) {
        return view == this.s.get() && this.l != 3;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void o(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        if (i3 != 1 && view == this.s.get()) {
            int top = v.getTop();
            int i5 = top - i2;
            if (i2 > 0) {
                if (i5 < C()) {
                    iArr[1] = top - C();
                    d.g.m.s.F(v, -iArr[1]);
                    i4 = 3;
                    E(i4);
                } else {
                    iArr[1] = i2;
                    d.g.m.s.F(v, -i2);
                    E(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.i;
                if (i5 <= i6 || this.j) {
                    iArr[1] = i2;
                    d.g.m.s.F(v, -i2);
                    E(1);
                } else {
                    iArr[1] = top - i6;
                    d.g.m.s.F(v, -iArr[1]);
                    i4 = 4;
                    E(i4);
                }
            }
            v.getTop();
            this.r.get();
            this.o = i2;
            this.p = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.os.Parcelable parcelable) {
        int i = ((com.google.android.material.bottomsheet.BottomSheetBehavior.b) parcelable).f226c;
        if (i == 1 || i == 2) {
            i = 4;
        }
        this.l = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public android.os.Parcelable u(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v) {
        return new com.google.android.material.bottomsheet.BottomSheetBehavior.b(android.view.View.BaseSavedState.EMPTY_STATE, this.l);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean w(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, android.view.View view2, int i, int i2) {
        this.o = 0;
        this.p = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void y(androidx.coordinatorlayout.widget.CoordinatorLayout r4, V r5, android.view.View r6, int r7) {
        /*
            r3 = this;
            int r4 = r5.getTop()
            int r7 = r3.C()
            r0 = 3
            if (r4 != r7) goto Lf
            r3.E(r0)
            return
        Lf:
            java.lang.ref.WeakReference<android.view.View> r4 = r3.s
            java.lang.Object r4 = r4.get()
            if (r6 != r4) goto Lc0
            boolean r4 = r3.p
            if (r4 != 0) goto L1d
            goto Lc0
        L1d:
            int r4 = r3.o
            r6 = 0
            if (r4 <= 0) goto L27
            int r4 = r3.C()
            goto L90
        L27:
            boolean r4 = r3.j
            if (r4 == 0) goto L4a
            android.view.VelocityTracker r4 = r3.t
            if (r4 != 0) goto L31
            r4 = 0
            goto L40
        L31:
            r7 = 1000(0x3e8, float:1.401E-42)
            float r1 = r3.b
            r4.computeCurrentVelocity(r7, r1)
            android.view.VelocityTracker r4 = r3.t
            int r7 = r3.u
            float r4 = r4.getYVelocity(r7)
        L40:
            boolean r4 = r3.F(r5, r4)
            if (r4 == 0) goto L4a
            int r4 = r3.q
            r0 = 5
            goto L90
        L4a:
            int r4 = r3.o
            if (r4 != 0) goto L8d
            int r4 = r5.getTop()
            boolean r7 = r3.a
            if (r7 == 0) goto L6a
            int r7 = r3.f225g
            int r7 = r4 - r7
            int r7 = java.lang.Math.abs(r7)
            int r1 = r3.i
            int r4 = r4 - r1
            int r4 = java.lang.Math.abs(r4)
            if (r7 >= r4) goto L8d
            int r4 = r3.f225g
            goto L90
        L6a:
            int r7 = r3.h
            if (r4 >= r7) goto L7a
            int r7 = r3.i
            int r7 = r4 - r7
            int r7 = java.lang.Math.abs(r7)
            if (r4 >= r7) goto L89
            r4 = 0
            goto L90
        L7a:
            int r7 = r4 - r7
            int r7 = java.lang.Math.abs(r7)
            int r0 = r3.i
            int r4 = r4 - r0
            int r4 = java.lang.Math.abs(r4)
            if (r7 >= r4) goto L8d
        L89:
            int r4 = r3.h
            r0 = 6
            goto L90
        L8d:
            int r4 = r3.i
            r0 = 4
        L90:
            d.i.b.a r7 = r3.m
            int r1 = r5.getLeft()
            r7.r = r5
            r2 = -1
            r7.f2039c = r2
            boolean r4 = r7.l(r1, r4, r6, r6)
            if (r4 != 0) goto Lac
            int r1 = r7.a
            if (r1 != 0) goto Lac
            android.view.View r1 = r7.r
            if (r1 == 0) goto Lac
            r1 = 0
            r7.r = r1
        Lac:
            if (r4 == 0) goto Lbb
            r4 = 2
            r3.E(r4)
            com.google.android.material.bottomsheet.BottomSheetBehavior$c r4 = new com.google.android.material.bottomsheet.BottomSheetBehavior$c
            r4.<init>(r5, r0)
            d.g.m.s.I(r5, r4)
            goto Lbe
        Lbb:
            r3.E(r0)
        Lbe:
            r3.p = r6
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.y(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.l == 1 && actionMasked == 0) {
            return true;
        }
        d.i.b.a aVar = this.m;
        if (aVar != null) {
            aVar.n(motionEvent);
        }
        if (actionMasked == 0) {
            this.u = -1;
            android.view.VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.t = null;
            }
        }
        if (this.t == null) {
            this.t = android.view.VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (actionMasked == 2 && !this.n) {
            float fAbs = java.lang.Math.abs(this.v - motionEvent.getY());
            d.i.b.a aVar2 = this.m;
            if (fAbs > aVar2.b) {
                aVar2.b(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.n;
    }
}
