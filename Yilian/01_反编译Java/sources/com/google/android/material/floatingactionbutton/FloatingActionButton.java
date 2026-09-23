package com.google.android.material.floatingactionbutton;

@androidx.coordinatorlayout.widget.CoordinatorLayout.d(com.google.android.material.floatingactionbutton.FloatingActionButton.Behavior.class)
/* loaded from: classes.dex */
public class FloatingActionButton extends e.c.a.b.q.f implements d.g.m.n, d.g.n.g, e.c.a.b.o.a {
    public android.content.res.ColorStateList b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f228c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.res.ColorStateList f229d;

    /* renamed from: e, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f230e;

    /* renamed from: f, reason: collision with root package name */
    public android.content.res.ColorStateList f231f;

    /* renamed from: g, reason: collision with root package name */
    public int f232g;
    public int h;
    public int i;
    public boolean j;
    public final android.graphics.Rect k;
    public e.c.a.b.p.e l;

    public static class BaseBehavior<T extends com.google.android.material.floatingactionbutton.FloatingActionButton> extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<T> {
        public android.graphics.Rect a;
        public boolean b;

        public BaseBehavior() {
            this.b = true;
        }

        public BaseBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.FloatingActionButton_Behavior_Layout);
            this.b = typedArrayObtainStyledAttributes.getBoolean(e.c.a.b.i.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public boolean A(com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton, android.graphics.Rect rect) {
            android.graphics.Rect rect2 = floatingActionButton.k;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public final boolean B(android.view.View view, com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton) {
            return this.b && ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) floatingActionButton.getLayoutParams()).f94f == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        public final boolean C(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, com.google.android.material.appbar.AppBarLayout appBarLayout, com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton) {
            if (!B(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new android.graphics.Rect();
            }
            android.graphics.Rect rect = this.a;
            e.c.a.b.q.b.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.h(null, false);
                return true;
            }
            floatingActionButton.n(null, false);
            return true;
        }

        public final boolean D(android.view.View view, com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton) {
            if (!B(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.h(null, false);
                return true;
            }
            floatingActionButton.n(null, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.graphics.Rect rect) {
            return A((com.google.android.material.floatingactionbutton.FloatingActionButton) view, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void f(androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean g(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = (com.google.android.material.floatingactionbutton.FloatingActionButton) view;
            if (view2 instanceof com.google.android.material.appbar.AppBarLayout) {
                C(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) view2, floatingActionButton);
            } else {
                android.view.ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.f ? ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) layoutParams).a instanceof com.google.android.material.bottomsheet.BottomSheetBehavior : false) {
                    D(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i) {
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = (com.google.android.material.floatingactionbutton.FloatingActionButton) view;
            java.util.List<android.view.View> listD = coordinatorLayout.d(floatingActionButton);
            int size = listD.size();
            for (int i2 = 0; i2 < size; i2++) {
                android.view.View view2 = listD.get(i2);
                if (!(view2 instanceof com.google.android.material.appbar.AppBarLayout)) {
                    android.view.ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.f ? ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) layoutParams).a instanceof com.google.android.material.bottomsheet.BottomSheetBehavior : false) && D(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (C(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.q(floatingActionButton, i);
            return true;
        }
    }

    public static class Behavior extends com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior<com.google.android.material.floatingactionbutton.FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
    }

    public class b implements e.c.a.b.s.b {
        public b() {
        }
    }

    private e.c.a.b.p.e getImpl() {
        if (this.l == null) {
            this.l = android.os.Build.VERSION.SDK_INT >= 21 ? new e.c.a.b.p.f(this, new com.google.android.material.floatingactionbutton.FloatingActionButton.b()) : new e.c.a.b.p.e(this, new com.google.android.material.floatingactionbutton.FloatingActionButton.b());
        }
        return this.l;
    }

    public static int m(int i, int i2) {
        int mode = android.view.View.MeasureSpec.getMode(i2);
        int size = android.view.View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return java.lang.Math.min(i, size);
        }
        if (mode == 0) {
            return i;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new java.lang.IllegalArgumentException();
    }

    @Override // e.c.a.b.o.a
    public boolean a() {
        throw null;
    }

    public void d(android.animation.Animator.AnimatorListener animatorListener) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.n == null) {
            impl.n = new java.util.ArrayList<>();
        }
        impl.n.add(null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().h(getDrawableState());
    }

    public void e(android.animation.Animator.AnimatorListener animatorListener) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.m == null) {
            impl.m = new java.util.ArrayList<>();
        }
        impl.m.add(null);
    }

    @java.lang.Deprecated
    public boolean f(android.graphics.Rect rect) {
        if (!d.g.m.s.A(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        throw null;
    }

    public final int g(int i) {
        int i2 = this.h;
        if (i2 != 0) {
            return i2;
        }
        android.content.res.Resources resources = getResources();
        if (i != -1) {
            return resources.getDimensionPixelSize(i != 1 ? e.c.a.b.c.design_fab_size_normal : e.c.a.b.c.design_fab_size_mini);
        }
        return java.lang.Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? g(1) : g(0);
    }

    @Override // android.view.View
    public android.content.res.ColorStateList getBackgroundTintList() {
        return this.b;
    }

    @Override // android.view.View
    public android.graphics.PorterDuff.Mode getBackgroundTintMode() {
        return this.f228c;
    }

    public float getCompatElevation() {
        return getImpl().c();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().j;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().k;
    }

    public android.graphics.drawable.Drawable getContentBackground() {
        if (getImpl() != null) {
            return null;
        }
        throw null;
    }

    public int getCustomSize() {
        return this.h;
    }

    public int getExpandedComponentIdHint() {
        throw null;
    }

    public e.c.a.b.j.g getHideMotionSpec() {
        return getImpl().f2645d;
    }

    @java.lang.Deprecated
    public int getRippleColor() {
        android.content.res.ColorStateList colorStateList = this.f231f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public android.content.res.ColorStateList getRippleColorStateList() {
        return this.f231f;
    }

    public e.c.a.b.j.g getShowMotionSpec() {
        return getImpl().f2644c;
    }

    public int getSize() {
        return this.f232g;
    }

    public int getSizeDimension() {
        return g(this.f232g);
    }

    @Override // d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // d.g.n.g
    public android.content.res.ColorStateList getSupportImageTintList() {
        return this.f229d;
    }

    @Override // d.g.n.g
    public android.graphics.PorterDuff.Mode getSupportImageTintMode() {
        return this.f230e;
    }

    public boolean getUseCompatPadding() {
        return this.j;
    }

    public void h(com.google.android.material.floatingactionbutton.FloatingActionButton.a aVar, boolean z) {
        e.c.a.b.p.e impl = getImpl();
        boolean z2 = false;
        if (impl.o.getVisibility() != 0 ? impl.a != 2 : impl.a == 1) {
            z2 = true;
        }
        if (z2) {
            return;
        }
        android.animation.Animator animator = impl.b;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.n()) {
            impl.o.b(z ? 8 : 4, z);
            return;
        }
        e.c.a.b.j.g gVar = impl.f2645d;
        if (gVar == null) {
            if (impl.f2647f == null) {
                impl.f2647f = e.c.a.b.j.g.a(impl.o.getContext(), e.c.a.b.a.design_fab_hide_motion_spec);
            }
            gVar = impl.f2647f;
        }
        android.animation.AnimatorSet animatorSetA = impl.a(gVar, 0.0f, 0.0f, 0.0f);
        animatorSetA.addListener(new e.c.a.b.p.b(impl, z, null));
        java.util.ArrayList<android.animation.Animator.AnimatorListener> arrayList = impl.n;
        if (arrayList != null) {
            java.util.Iterator<android.animation.Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetA.addListener(it.next());
            }
        }
        animatorSetA.start();
    }

    public boolean i() {
        return getImpl().e();
    }

    public final void j() {
        android.graphics.drawable.Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        android.content.res.ColorStateList colorStateList = this.f229d;
        if (colorStateList == null) {
            d.b.k.r.i(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        android.graphics.PorterDuff.Mode mode = this.f230e;
        if (mode == null) {
            mode = android.graphics.PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(d.b.q.i.c(colorForState, mode));
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().f();
    }

    public void k(android.animation.Animator.AnimatorListener animatorListener) {
        java.util.ArrayList<android.animation.Animator.AnimatorListener> arrayList = getImpl().n;
        if (arrayList == null) {
            return;
        }
        arrayList.remove((java.lang.Object) null);
    }

    public void l(android.animation.Animator.AnimatorListener animatorListener) {
        java.util.ArrayList<android.animation.Animator.AnimatorListener> arrayList = getImpl().m;
        if (arrayList == null) {
            return;
        }
        arrayList.remove((java.lang.Object) null);
    }

    public void n(com.google.android.material.floatingactionbutton.FloatingActionButton.a aVar, boolean z) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.e()) {
            return;
        }
        android.animation.Animator animator = impl.b;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.n()) {
            impl.o.b(0, z);
            impl.o.setAlpha(1.0f);
            impl.o.setScaleY(1.0f);
            impl.o.setScaleX(1.0f);
            impl.l(1.0f);
            return;
        }
        if (impl.o.getVisibility() != 0) {
            impl.o.setAlpha(0.0f);
            impl.o.setScaleY(0.0f);
            impl.o.setScaleX(0.0f);
            impl.l(0.0f);
        }
        e.c.a.b.j.g gVar = impl.f2644c;
        if (gVar == null) {
            if (impl.f2646e == null) {
                impl.f2646e = e.c.a.b.j.g.a(impl.o.getContext(), e.c.a.b.a.design_fab_show_motion_spec);
            }
            gVar = impl.f2646e;
        }
        android.animation.AnimatorSet animatorSetA = impl.a(gVar, 1.0f, 1.0f, 1.0f);
        animatorSetA.addListener(new e.c.a.b.p.c(impl, z, null));
        java.util.ArrayList<android.animation.Animator.AnimatorListener> arrayList = impl.m;
        if (arrayList != null) {
            java.util.Iterator<android.animation.Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetA.addListener(it.next());
            }
        }
        animatorSetA.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e.c.a.b.p.e impl = getImpl();
        if (impl.k()) {
            if (impl.u == null) {
                impl.u = new e.c.a.b.p.d(impl);
            }
            impl.o.getViewTreeObserver().addOnPreDrawListener(impl.u);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e.c.a.b.p.e impl = getImpl();
        if (impl.u != null) {
            impl.o.getViewTreeObserver().removeOnPreDrawListener(impl.u);
            impl.u = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.i = (sizeDimension + 0) / 2;
        getImpl().o();
        java.lang.Math.min(m(sizeDimension, i), m(sizeDimension, i2));
        throw null;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof e.c.a.b.u.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e.c.a.b.u.a aVar = (e.c.a.b.u.a) parcelable;
        super.onRestoreInstanceState(aVar.a);
        aVar.f2663c.getOrDefault("expandableWidgetHelper", null);
        throw null;
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        if (super.onSaveInstanceState() == null) {
            throw new java.lang.IllegalArgumentException("superState must not be null");
        }
        d.i.a.a aVar = d.i.a.a.b;
        throw null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            f(null);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        android.util.Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        android.util.Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        android.util.Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        if (this.b != colorStateList) {
            this.b = colorStateList;
            if (getImpl() == null) {
                throw null;
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        if (this.f228c != mode) {
            this.f228c = mode;
            if (getImpl() == null) {
                throw null;
            }
        }
    }

    public void setCompatElevation(float f2) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.i != f2) {
            impl.i = f2;
            impl.i(f2, impl.j, impl.k);
        }
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.j != f2) {
            impl.j = f2;
            impl.i(impl.i, f2, impl.k);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f2) {
        e.c.a.b.p.e impl = getImpl();
        if (impl.k != f2) {
            impl.k = f2;
            impl.i(impl.i, impl.j, f2);
        }
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("Custom size must be non-negative");
        }
        this.h = i;
    }

    public void setExpandedComponentIdHint(int i) {
        throw null;
    }

    public void setHideMotionSpec(e.c.a.b.j.g gVar) {
        getImpl().f2645d = gVar;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(e.c.a.b.j.g.a(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(android.graphics.drawable.Drawable drawable) {
        super.setImageDrawable(drawable);
        e.c.a.b.p.e impl = getImpl();
        impl.l(impl.l);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        throw null;
    }

    public void setRippleColor(int i) {
        setRippleColor(android.content.res.ColorStateList.valueOf(i));
    }

    public void setRippleColor(android.content.res.ColorStateList colorStateList) {
        if (this.f231f != colorStateList) {
            this.f231f = colorStateList;
            getImpl().m(this.f231f);
        }
    }

    public void setShowMotionSpec(e.c.a.b.j.g gVar) {
        getImpl().f2644c = gVar;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(e.c.a.b.j.g.a(getContext(), i));
    }

    public void setSize(int i) {
        this.h = 0;
        if (i != this.f232g) {
            this.f232g = i;
            requestLayout();
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // d.g.n.g
    public void setSupportImageTintList(android.content.res.ColorStateList colorStateList) {
        if (this.f229d != colorStateList) {
            this.f229d = colorStateList;
            j();
        }
    }

    @Override // d.g.n.g
    public void setSupportImageTintMode(android.graphics.PorterDuff.Mode mode) {
        if (this.f230e != mode) {
            this.f230e = mode;
            j();
        }
    }

    public void setUseCompatPadding(boolean z) {
        if (this.j != z) {
            this.j = z;
            getImpl().g();
        }
    }
}
