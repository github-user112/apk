package d.s;

/* loaded from: classes.dex */
public class c extends d.s.k {
    public static final java.lang.String[] M = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final android.util.Property<android.graphics.drawable.Drawable, android.graphics.PointF> N = new d.s.c.b(android.graphics.PointF.class, "boundsOrigin");
    public static final android.util.Property<d.s.c.k, android.graphics.PointF> O = new d.s.c.C0059c(android.graphics.PointF.class, "topLeft");
    public static final android.util.Property<d.s.c.k, android.graphics.PointF> P = new d.s.c.d(android.graphics.PointF.class, "bottomRight");
    public static final android.util.Property<android.view.View, android.graphics.PointF> Q = new d.s.c.e(android.graphics.PointF.class, "bottomRight");
    public static final android.util.Property<android.view.View, android.graphics.PointF> R = new d.s.c.f(android.graphics.PointF.class, "topLeft");
    public static final android.util.Property<android.view.View, android.graphics.PointF> S = new d.s.c.g(android.graphics.PointF.class, "position");
    public static d.s.i T = new d.s.i();
    public int[] J = new int[2];
    public boolean K = false;
    public boolean L = false;

    public class a extends android.animation.AnimatorListenerAdapter {
        public final /* synthetic */ android.view.ViewGroup a;
        public final /* synthetic */ android.graphics.drawable.BitmapDrawable b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2242c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ float f2243d;

        public a(d.s.c cVar, android.view.ViewGroup viewGroup, android.graphics.drawable.BitmapDrawable bitmapDrawable, android.view.View view, float f2) {
            this.a = viewGroup;
            this.b = bitmapDrawable;
            this.f2242c = view;
            this.f2243d = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            d.s.c0.a(this.a).d(this.b);
            d.s.c0.a.e(this.f2242c, this.f2243d);
        }
    }

    public static class b extends android.util.Property<android.graphics.drawable.Drawable, android.graphics.PointF> {
        public android.graphics.Rect a;

        public b(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
            this.a = new android.graphics.Rect();
        }

        @Override // android.util.Property
        public android.graphics.PointF get(android.graphics.drawable.Drawable drawable) {
            drawable.copyBounds(this.a);
            android.graphics.Rect rect = this.a;
            return new android.graphics.PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public void set(android.graphics.drawable.Drawable drawable, android.graphics.PointF pointF) {
            android.graphics.drawable.Drawable drawable2 = drawable;
            android.graphics.PointF pointF2 = pointF;
            drawable2.copyBounds(this.a);
            this.a.offsetTo(java.lang.Math.round(pointF2.x), java.lang.Math.round(pointF2.y));
            drawable2.setBounds(this.a);
        }
    }

    /* renamed from: d.s.c$c, reason: collision with other inner class name */
    public static class C0059c extends android.util.Property<d.s.c.k, android.graphics.PointF> {
        public C0059c(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.PointF get(d.s.c.k kVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(d.s.c.k kVar, android.graphics.PointF pointF) {
            d.s.c.k kVar2 = kVar;
            android.graphics.PointF pointF2 = pointF;
            if (kVar2 == null) {
                throw null;
            }
            kVar2.a = java.lang.Math.round(pointF2.x);
            int iRound = java.lang.Math.round(pointF2.y);
            kVar2.b = iRound;
            int i = kVar2.f2252f + 1;
            kVar2.f2252f = i;
            if (i == kVar2.f2253g) {
                d.s.c0.d(kVar2.f2251e, kVar2.a, iRound, kVar2.f2249c, kVar2.f2250d);
                kVar2.f2252f = 0;
                kVar2.f2253g = 0;
            }
        }
    }

    public static class d extends android.util.Property<d.s.c.k, android.graphics.PointF> {
        public d(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.PointF get(d.s.c.k kVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(d.s.c.k kVar, android.graphics.PointF pointF) {
            d.s.c.k kVar2 = kVar;
            android.graphics.PointF pointF2 = pointF;
            if (kVar2 == null) {
                throw null;
            }
            kVar2.f2249c = java.lang.Math.round(pointF2.x);
            int iRound = java.lang.Math.round(pointF2.y);
            kVar2.f2250d = iRound;
            int i = kVar2.f2253g + 1;
            kVar2.f2253g = i;
            if (kVar2.f2252f == i) {
                d.s.c0.d(kVar2.f2251e, kVar2.a, kVar2.b, kVar2.f2249c, iRound);
                kVar2.f2252f = 0;
                kVar2.f2253g = 0;
            }
        }
    }

    public static class e extends android.util.Property<android.view.View, android.graphics.PointF> {
        public e(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.PointF get(android.view.View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(android.view.View view, android.graphics.PointF pointF) {
            android.view.View view2 = view;
            android.graphics.PointF pointF2 = pointF;
            d.s.c0.d(view2, view2.getLeft(), view2.getTop(), java.lang.Math.round(pointF2.x), java.lang.Math.round(pointF2.y));
        }
    }

    public static class f extends android.util.Property<android.view.View, android.graphics.PointF> {
        public f(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.PointF get(android.view.View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(android.view.View view, android.graphics.PointF pointF) {
            android.view.View view2 = view;
            android.graphics.PointF pointF2 = pointF;
            d.s.c0.d(view2, java.lang.Math.round(pointF2.x), java.lang.Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    public static class g extends android.util.Property<android.view.View, android.graphics.PointF> {
        public g(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.PointF get(android.view.View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(android.view.View view, android.graphics.PointF pointF) {
            android.view.View view2 = view;
            android.graphics.PointF pointF2 = pointF;
            int iRound = java.lang.Math.round(pointF2.x);
            int iRound2 = java.lang.Math.round(pointF2.y);
            d.s.c0.d(view2, iRound, iRound2, view2.getWidth() + iRound, view2.getHeight() + iRound2);
        }
    }

    public class h extends android.animation.AnimatorListenerAdapter {
        public final /* synthetic */ d.s.c.k a;
        public d.s.c.k mViewBounds;

        public h(d.s.c cVar, d.s.c.k kVar) {
            this.a = kVar;
            this.mViewBounds = this.a;
        }
    }

    public class i extends android.animation.AnimatorListenerAdapter {
        public boolean a;
        public final /* synthetic */ android.view.View b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Rect f2244c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f2245d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f2246e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f2247f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f2248g;

        public i(d.s.c cVar, android.view.View view, android.graphics.Rect rect, int i, int i2, int i3, int i4) {
            this.b = view;
            this.f2244c = rect;
            this.f2245d = i;
            this.f2246e = i2;
            this.f2247f = i3;
            this.f2248g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (this.a) {
                return;
            }
            d.g.m.s.P(this.b, this.f2244c);
            d.s.c0.d(this.b, this.f2245d, this.f2246e, this.f2247f, this.f2248g);
        }
    }

    public class j extends d.s.n {
        public boolean a = false;
        public final /* synthetic */ android.view.ViewGroup b;

        public j(d.s.c cVar, android.view.ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // d.s.n, d.s.k.d
        public void b(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            d.b.k.r.y0(this.b, false);
        }

        @Override // d.s.n, d.s.k.d
        public void c(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            d.b.k.r.y0(this.b, true);
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (!this.a) {
                d.b.k.r.y0(this.b, false);
            }
            kVar.v(this);
        }
    }

    public static class k {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2249c;

        /* renamed from: d, reason: collision with root package name */
        public int f2250d;

        /* renamed from: e, reason: collision with root package name */
        public android.view.View f2251e;

        /* renamed from: f, reason: collision with root package name */
        public int f2252f;

        /* renamed from: g, reason: collision with root package name */
        public int f2253g;

        public k(android.view.View view) {
            this.f2251e = view;
        }
    }

    public final void H(d.s.s sVar) {
        android.view.View view = sVar.b;
        if (!d.g.m.s.A(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        sVar.a.put("android:changeBounds:bounds", new android.graphics.Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        sVar.a.put("android:changeBounds:parent", sVar.b.getParent());
        if (this.L) {
            sVar.b.getLocationInWindow(this.J);
            sVar.a.put("android:changeBounds:windowX", java.lang.Integer.valueOf(this.J[0]));
            sVar.a.put("android:changeBounds:windowY", java.lang.Integer.valueOf(this.J[1]));
        }
        if (this.K) {
            sVar.a.put("android:changeBounds:clip", android.os.Build.VERSION.SDK_INT >= 18 ? view.getClipBounds() : null);
        }
    }

    @Override // d.s.k
    public void d(d.s.s sVar) {
        H(sVar);
    }

    @Override // d.s.k
    public void g(d.s.s sVar) {
        H(sVar);
    }

    @Override // d.s.k
    public android.animation.Animator k(android.view.ViewGroup viewGroup, d.s.s sVar, d.s.s sVar2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i2;
        android.view.View view;
        int i3;
        android.animation.ObjectAnimator objectAnimator;
        android.animation.Animator animatorB;
        android.graphics.Path pathA;
        android.util.Property<android.view.View, android.graphics.PointF> property;
        d.s.s sVarN;
        if (sVar == null || sVar2 == null) {
            return null;
        }
        java.util.Map<java.lang.String, java.lang.Object> map = sVar.a;
        java.util.Map<java.lang.String, java.lang.Object> map2 = sVar2.a;
        android.view.ViewGroup viewGroup2 = (android.view.ViewGroup) map.get("android:changeBounds:parent");
        android.view.ViewGroup viewGroup3 = (android.view.ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        android.view.View view2 = sVar2.b;
        if (!(!this.L || ((sVarN = n(viewGroup2, true)) != null ? viewGroup3 == sVarN.b : viewGroup2 == viewGroup3))) {
            int iIntValue = ((java.lang.Integer) sVar.a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((java.lang.Integer) sVar.a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((java.lang.Integer) sVar2.a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((java.lang.Integer) sVar2.a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.J);
            android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            view2.draw(new android.graphics.Canvas(bitmapCreateBitmap));
            android.graphics.drawable.BitmapDrawable bitmapDrawable = new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap);
            float fB = d.s.c0.b(view2);
            d.s.c0.a.e(view2, 0.0f);
            (android.os.Build.VERSION.SDK_INT >= 18 ? new d.s.a0(viewGroup) : d.s.z.e(viewGroup)).b(bitmapDrawable);
            d.s.f fVar = this.F;
            int[] iArr = this.J;
            android.graphics.Path pathA2 = fVar.a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1]);
            android.util.Property<android.graphics.drawable.Drawable, android.graphics.PointF> property2 = N;
            android.animation.ObjectAnimator objectAnimatorOfPropertyValuesHolder = android.animation.ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, android.os.Build.VERSION.SDK_INT >= 21 ? android.animation.PropertyValuesHolder.ofObject(property2, (android.animation.TypeConverter) null, pathA2) : android.animation.PropertyValuesHolder.ofFloat(new d.s.g(property2, pathA2), 0.0f, 1.0f));
            objectAnimatorOfPropertyValuesHolder.addListener(new d.s.c.a(this, viewGroup, bitmapDrawable, view2, fB));
            return objectAnimatorOfPropertyValuesHolder;
        }
        android.graphics.Rect rect = (android.graphics.Rect) sVar.a.get("android:changeBounds:bounds");
        android.graphics.Rect rect2 = (android.graphics.Rect) sVar2.a.get("android:changeBounds:bounds");
        int i4 = rect.left;
        int i5 = rect2.left;
        int i6 = rect.top;
        int i7 = rect2.top;
        int i8 = rect.right;
        int i9 = rect2.right;
        int i10 = rect.bottom;
        int i11 = rect2.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        android.graphics.Rect rect3 = (android.graphics.Rect) sVar.a.get("android:changeBounds:clip");
        android.graphics.Rect rect4 = (android.graphics.Rect) sVar2.a.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (this.K) {
            view = view2;
            d.s.c0.d(view, i4, i6, java.lang.Math.max(i12, i14) + i4, java.lang.Math.max(i13, i15) + i6);
            android.animation.ObjectAnimator objectAnimatorX = (i4 == i5 && i6 == i7) ? null : d.b.k.r.X(view, S, this.F.a(i4, i6, i5, i7));
            if (rect3 == null) {
                i3 = 0;
                rect3 = new android.graphics.Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
            }
            android.graphics.Rect rect5 = rect4 == null ? new android.graphics.Rect(i3, i3, i14, i15) : rect4;
            if (rect3.equals(rect5)) {
                objectAnimator = null;
            } else {
                d.g.m.s.P(view, rect3);
                d.s.i iVar = T;
                java.lang.Object[] objArr = new java.lang.Object[2];
                objArr[i3] = rect3;
                objArr[1] = rect5;
                android.animation.ObjectAnimator objectAnimatorOfObject = android.animation.ObjectAnimator.ofObject(view, "clipBounds", iVar, objArr);
                objectAnimatorOfObject.addListener(new d.s.c.i(this, view, rect4, i5, i7, i9, i11));
                objectAnimator = objectAnimatorOfObject;
            }
            animatorB = d.s.r.b(objectAnimatorX, objectAnimator);
        } else {
            view = view2;
            d.s.c0.d(view, i4, i6, i8, i10);
            if (i2 == 2) {
                if (i12 == i14 && i13 == i15) {
                    pathA = this.F.a(i4, i6, i5, i7);
                    property = S;
                } else {
                    d.s.c.k kVar = new d.s.c.k(view);
                    android.animation.ObjectAnimator objectAnimatorX2 = d.b.k.r.X(kVar, O, this.F.a(i4, i6, i5, i7));
                    android.animation.ObjectAnimator objectAnimatorX3 = d.b.k.r.X(kVar, P, this.F.a(i8, i10, i9, i11));
                    android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
                    animatorSet.playTogether(objectAnimatorX2, objectAnimatorX3);
                    animatorSet.addListener(new d.s.c.h(this, kVar));
                    animatorB = animatorSet;
                }
            } else if (i4 == i5 && i6 == i7) {
                pathA = this.F.a(i8, i10, i9, i11);
                property = Q;
            } else {
                pathA = this.F.a(i4, i6, i5, i7);
                property = R;
            }
            animatorB = d.b.k.r.X(view, property, pathA);
        }
        if (view.getParent() instanceof android.view.ViewGroup) {
            android.view.ViewGroup viewGroup4 = (android.view.ViewGroup) view.getParent();
            d.b.k.r.y0(viewGroup4, true);
            a(new d.s.c.j(this, viewGroup4));
        }
        return animatorB;
    }

    @Override // d.s.k
    public java.lang.String[] p() {
        return M;
    }
}
