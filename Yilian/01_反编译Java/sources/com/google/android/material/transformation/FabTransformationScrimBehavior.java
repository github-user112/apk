package com.google.android.material.transformation;

/* loaded from: classes.dex */
public class FabTransformationScrimBehavior extends com.google.android.material.transformation.ExpandableTransformationBehavior {

    /* renamed from: c, reason: collision with root package name */
    public final e.c.a.b.j.h f245c;

    /* renamed from: d, reason: collision with root package name */
    public final e.c.a.b.j.h f246d;

    public class a extends android.animation.AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ android.view.View b;

        public a(com.google.android.material.transformation.FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, android.view.View view) {
            this.a = z;
            this.b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (this.a) {
                return;
            }
            this.b.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f245c = new e.c.a.b.j.h(75L, 150L);
        this.f246d = new e.c.a.b.j.h(0L, 150L);
    }

    public FabTransformationScrimBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f245c = new e.c.a.b.j.h(75L, 150L);
        this.f246d = new e.c.a.b.j.h(0L, 150L);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public android.animation.AnimatorSet C(android.view.View view, android.view.View view2, boolean z, boolean z2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        new java.util.ArrayList();
        D(view2, z, z2, arrayList);
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        d.s.y.Y(animatorSet, arrayList);
        animatorSet.addListener(new com.google.android.material.transformation.FabTransformationScrimBehavior.a(this, z, view2));
        return animatorSet;
    }

    public final void D(android.view.View view, boolean z, boolean z2, java.util.List list) {
        android.animation.ObjectAnimator objectAnimatorOfFloat;
        e.c.a.b.j.h hVar = z ? this.f245c : this.f246d;
        if (z) {
            if (!z2) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.ALPHA, 0.0f);
        }
        hVar.a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
        return view2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.MotionEvent motionEvent) {
        return false;
    }
}
