package com.google.android.material.bottomappbar;

/* loaded from: classes.dex */
public class BottomAppBar extends androidx.appcompat.widget.Toolbar implements androidx.coordinatorlayout.widget.CoordinatorLayout.b {
    public android.animation.Animator O;
    public android.animation.Animator P;
    public int Q;
    public boolean R;
    public boolean S;

    public static class Behavior extends com.google.android.material.behavior.HideBottomViewOnScrollBehavior<com.google.android.material.bottomappbar.BottomAppBar> {

        /* renamed from: d, reason: collision with root package name */
        public final android.graphics.Rect f218d;

        public Behavior() {
            this.f218d = new android.graphics.Rect();
        }

        public Behavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f218d = new android.graphics.Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void B(android.view.View view) {
            com.google.android.material.bottomappbar.BottomAppBar bottomAppBar = (com.google.android.material.bottomappbar.BottomAppBar) view;
            super.B(bottomAppBar);
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButtonZ = bottomAppBar.z();
            if (floatingActionButtonZ != null) {
                floatingActionButtonZ.f(this.f218d);
                float measuredHeight = floatingActionButtonZ.getMeasuredHeight() - this.f218d.height();
                floatingActionButtonZ.clearAnimation();
                floatingActionButtonZ.animate().translationY((-floatingActionButtonZ.getPaddingBottom()) + measuredHeight).setInterpolator(e.c.a.b.j.a.b).setDuration(175L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void C(android.view.View view) {
            com.google.android.material.bottomappbar.BottomAppBar bottomAppBar = (com.google.android.material.bottomappbar.BottomAppBar) view;
            super.C(bottomAppBar);
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButtonZ = bottomAppBar.z();
            if (floatingActionButtonZ != null) {
                floatingActionButtonZ.clearAnimation();
                floatingActionButtonZ.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(e.c.a.b.j.a.f2606c).setDuration(225L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i) {
            android.animation.Animator animator;
            com.google.android.material.bottomappbar.BottomAppBar bottomAppBar = (com.google.android.material.bottomappbar.BottomAppBar) view;
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButtonZ = bottomAppBar.z();
            if (floatingActionButtonZ == null) {
                android.animation.Animator animator2 = bottomAppBar.P;
                if (!((animator2 != null && animator2.isRunning()) || ((animator = bottomAppBar.O) != null && animator.isRunning()))) {
                    com.google.android.material.bottomappbar.BottomAppBar.w(bottomAppBar);
                    throw null;
                }
                coordinatorLayout.q(bottomAppBar, i);
                this.a = bottomAppBar.getMeasuredHeight();
                return false;
            }
            ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) floatingActionButtonZ.getLayoutParams()).f92d = 17;
            floatingActionButtonZ.k(null);
            floatingActionButtonZ.l(null);
            floatingActionButtonZ.d(null);
            floatingActionButtonZ.e(null);
            this.f218d.set(0, 0, floatingActionButtonZ.getMeasuredWidth(), floatingActionButtonZ.getMeasuredHeight());
            throw null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean w(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2, android.view.View view3, int i, int i2) {
            com.google.android.material.bottomappbar.BottomAppBar bottomAppBar = (com.google.android.material.bottomappbar.BottomAppBar) view;
            if (bottomAppBar.getHideOnScroll()) {
                return i2 == 0 ? v(coordinatorLayout, bottomAppBar, view2, view3, i) : false;
            }
            return false;
        }
    }

    public static class a extends d.i.a.a {
        public static final android.os.Parcelable.Creator<com.google.android.material.bottomappbar.BottomAppBar.a> CREATOR = new com.google.android.material.bottomappbar.BottomAppBar.a.C0003a();

        /* renamed from: c, reason: collision with root package name */
        public int f219c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f220d;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a$a, reason: collision with other inner class name */
        public static class C0003a implements android.os.Parcelable.ClassLoaderCreator<com.google.android.material.bottomappbar.BottomAppBar.a> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new com.google.android.material.bottomappbar.BottomAppBar.a(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new com.google.android.material.bottomappbar.BottomAppBar.a[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public com.google.android.material.bottomappbar.BottomAppBar.a createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new com.google.android.material.bottomappbar.BottomAppBar.a(parcel, classLoader);
            }
        }

        public a(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f219c = parcel.readInt();
            this.f220d = parcel.readInt() != 0;
        }

        public a(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.f219c);
            parcel.writeInt(this.f220d ? 1 : 0);
        }
    }

    private androidx.appcompat.widget.ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            android.view.View childAt = getChildAt(i);
            if (childAt instanceof androidx.appcompat.widget.ActionMenuView) {
                return (androidx.appcompat.widget.ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        return A(this.Q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationY() {
        boolean z = this.S;
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButtonZ = z();
        if (floatingActionButtonZ == null) {
            return 0.0f;
        }
        android.graphics.Rect rect = new android.graphics.Rect();
        floatingActionButtonZ.f(rect);
        float fHeight = rect.height();
        if (fHeight == 0.0f) {
            fHeight = floatingActionButtonZ.getMeasuredHeight();
        }
        float height = floatingActionButtonZ.getHeight() - rect.bottom;
        float height2 = floatingActionButtonZ.getHeight() - rect.height();
        float f2 = (fHeight / 2.0f) + (-getCradleVerticalOffset()) + height;
        float paddingBottom = height2 - floatingActionButtonZ.getPaddingBottom();
        float f3 = -getMeasuredHeight();
        if (!z) {
            f2 = paddingBottom;
        }
        return f3 + f2;
    }

    public static void w(com.google.android.material.bottomappbar.BottomAppBar bottomAppBar) {
        bottomAppBar.getFabTranslationX();
        throw null;
    }

    public final int A(int i) {
        boolean z = d.g.m.s.o(this) == 1;
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - 0) * (z ? -1 : 1);
        }
        return 0;
    }

    public final boolean B() {
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButtonZ = z();
        return floatingActionButtonZ != null && floatingActionButtonZ.i();
    }

    public final void C(androidx.appcompat.widget.ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = d.g.m.s.o(this) == 1;
        int iMax = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            android.view.View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof androidx.appcompat.widget.Toolbar.e) && (((androidx.appcompat.widget.Toolbar.e) childAt.getLayoutParams()).a & 8388615) == 8388611) {
                iMax = java.lang.Math.max(iMax, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i == 1 && z) ? iMax - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()) : 0.0f);
    }

    public android.content.res.ColorStateList getBackgroundTint() {
        throw null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public androidx.coordinatorlayout.widget.CoordinatorLayout.c<com.google.android.material.bottomappbar.BottomAppBar> getBehavior() {
        return new com.google.android.material.bottomappbar.BottomAppBar.Behavior();
    }

    public float getCradleVerticalOffset() {
        throw null;
    }

    public int getFabAlignmentMode() {
        return this.Q;
    }

    public float getFabCradleMargin() {
        throw null;
    }

    public float getFabCradleRoundedCornerRadius() {
        throw null;
    }

    public boolean getHideOnScroll() {
        return this.R;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        android.animation.Animator animator = this.P;
        if (animator != null) {
            animator.cancel();
        }
        android.animation.Animator animator2 = this.O;
        if (animator2 != null) {
            animator2.cancel();
        }
        getFabTranslationX();
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof com.google.android.material.bottomappbar.BottomAppBar.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        com.google.android.material.bottomappbar.BottomAppBar.a aVar = (com.google.android.material.bottomappbar.BottomAppBar.a) parcelable;
        super.onRestoreInstanceState(aVar.a);
        this.Q = aVar.f219c;
        this.S = aVar.f220d;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        com.google.android.material.bottomappbar.BottomAppBar.a aVar = new com.google.android.material.bottomappbar.BottomAppBar.a(super.onSaveInstanceState());
        aVar.f219c = this.Q;
        aVar.f220d = this.S;
        return aVar;
    }

    public void setBackgroundTint(android.content.res.ColorStateList colorStateList) {
        d.b.k.r.t0(null, colorStateList);
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            throw null;
        }
    }

    public void setFabAlignmentMode(int i) {
        int i2;
        if (this.Q != i && d.g.m.s.A(this)) {
            android.animation.Animator animator = this.O;
            if (animator != null) {
                animator.cancel();
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            if (this.S) {
                throw null;
            }
            android.animation.ObjectAnimator objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(z(), "translationX", A(i));
            objectAnimatorOfFloat.setDuration(300L);
            arrayList.add(objectAnimatorOfFloat);
            android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.O = animatorSet;
            animatorSet.addListener(new e.c.a.b.l.a(this));
            this.O.start();
        }
        boolean z = this.S;
        if (d.g.m.s.A(this)) {
            android.animation.Animator animator2 = this.P;
            if (animator2 != null) {
                animator2.cancel();
            }
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            if (B()) {
                i2 = i;
            } else {
                z = false;
                i2 = 0;
            }
            androidx.appcompat.widget.ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                android.animation.ObjectAnimator objectAnimatorOfFloat2 = android.animation.ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                if ((this.S || (z && B())) && (this.Q == 1 || i2 == 1)) {
                    android.animation.ObjectAnimator objectAnimatorOfFloat3 = android.animation.ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    objectAnimatorOfFloat3.addListener(new e.c.a.b.l.c(this, actionMenuView, i2, z));
                    android.animation.AnimatorSet animatorSet2 = new android.animation.AnimatorSet();
                    animatorSet2.setDuration(150L);
                    animatorSet2.playSequentially(objectAnimatorOfFloat3, objectAnimatorOfFloat2);
                    arrayList2.add(animatorSet2);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList2.add(objectAnimatorOfFloat2);
                }
            }
            android.animation.AnimatorSet animatorSet3 = new android.animation.AnimatorSet();
            animatorSet3.playTogether(arrayList2);
            this.P = animatorSet3;
            animatorSet3.addListener(new e.c.a.b.l.b(this));
            this.P.start();
        }
        this.Q = i;
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            throw null;
        }
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            throw null;
        }
    }

    public void setFabDiameter(int i) {
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.R = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(java.lang.CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(java.lang.CharSequence charSequence) {
    }

    public final com.google.android.material.floatingactionbutton.FloatingActionButton z() {
        if (!(getParent() instanceof androidx.coordinatorlayout.widget.CoordinatorLayout)) {
            return null;
        }
        for (android.view.View view : ((androidx.coordinatorlayout.widget.CoordinatorLayout) getParent()).e(this)) {
            if (view instanceof com.google.android.material.floatingactionbutton.FloatingActionButton) {
                return (com.google.android.material.floatingactionbutton.FloatingActionButton) view;
            }
        }
        return null;
    }
}
