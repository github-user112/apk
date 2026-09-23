package com.google.android.material.transformation;

/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends com.google.android.material.transformation.ExpandableTransformationBehavior {

    /* renamed from: c, reason: collision with root package name */
    public final android.graphics.Rect f240c;

    /* renamed from: d, reason: collision with root package name */
    public final android.graphics.RectF f241d;

    /* renamed from: e, reason: collision with root package name */
    public final android.graphics.RectF f242e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f243f;

    public class a extends android.animation.AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ android.view.View b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f244c;

        public a(com.google.android.material.transformation.FabTransformationBehavior fabTransformationBehavior, boolean z, android.view.View view, android.view.View view2) {
            this.a = z;
            this.b = view;
            this.f244c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (this.a) {
                return;
            }
            this.b.setVisibility(4);
            this.f244c.setAlpha(1.0f);
            this.f244c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
                this.f244c.setAlpha(0.0f);
                this.f244c.setVisibility(4);
            }
        }
    }

    public static class b {
        public e.c.a.b.j.g a;
        public e.c.a.b.j.i b;
    }

    public FabTransformationBehavior() {
        this.f240c = new android.graphics.Rect();
        this.f241d = new android.graphics.RectF();
        this.f242e = new android.graphics.RectF();
        this.f243f = new int[2];
    }

    public FabTransformationBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f240c = new android.graphics.Rect();
        this.f241d = new android.graphics.RectF();
        this.f242e = new android.graphics.RectF();
        this.f243f = new int[2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public android.animation.AnimatorSet C(android.view.View view, android.view.View view2, boolean z, boolean z2) {
        e.c.a.b.n.d dVar;
        com.google.android.material.transformation.FabTransformationBehavior.b bVar;
        android.animation.Animator animator;
        e.c.a.b.j.h hVar;
        android.animation.ObjectAnimator objectAnimatorOfInt;
        android.content.Context context = view2.getContext();
        int i = z ? e.c.a.b.a.mtrl_fab_transformation_sheet_expand_spec : e.c.a.b.a.mtrl_fab_transformation_sheet_collapse_spec;
        com.google.android.material.transformation.FabTransformationBehavior.b bVar2 = new com.google.android.material.transformation.FabTransformationBehavior.b();
        bVar2.a = e.c.a.b.j.g.a(context, i);
        bVar2.b = new e.c.a.b.j.i(17, 0.0f, 0.0f);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            J(view, view2, z, z2, bVar2, arrayList);
        }
        android.graphics.RectF rectF = this.f241d;
        L(view, view2, z, z2, bVar2, arrayList, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        boolean z3 = view2 instanceof e.c.a.b.n.d;
        if (z3 && (view instanceof android.widget.ImageView)) {
            e.c.a.b.n.d dVar2 = (e.c.a.b.n.d) view2;
            android.graphics.drawable.Drawable drawable = ((android.widget.ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimatorOfInt = android.animation.ObjectAnimator.ofInt(drawable, e.c.a.b.j.d.b, 0);
                } else {
                    objectAnimatorOfInt = android.animation.ObjectAnimator.ofInt(drawable, e.c.a.b.j.d.b, 255);
                }
                objectAnimatorOfInt.addUpdateListener(new e.c.a.b.v.a(this, view2));
                bVar2.a.c("iconFade").a(objectAnimatorOfInt);
                arrayList.add(objectAnimatorOfInt);
                arrayList2.add(new e.c.a.b.v.b(this, dVar2, drawable));
            }
        }
        if (z3) {
            e.c.a.b.n.d dVar3 = (e.c.a.b.n.d) view2;
            e.c.a.b.j.i iVar = bVar2.b;
            android.graphics.RectF rectF2 = this.f241d;
            android.graphics.RectF rectF3 = this.f242e;
            G(view, rectF2);
            G(view2, rectF3);
            rectF3.offset(-D(view, view2, iVar), 0.0f);
            float fCenterX = rectF2.centerX() - rectF3.left;
            e.c.a.b.j.i iVar2 = bVar2.b;
            android.graphics.RectF rectF4 = this.f241d;
            android.graphics.RectF rectF5 = this.f242e;
            G(view, rectF4);
            G(view2, rectF5);
            rectF5.offset(0.0f, -E(view, view2, iVar2));
            float fCenterY = rectF4.centerY() - rectF5.top;
            ((com.google.android.material.floatingactionbutton.FloatingActionButton) view).f(this.f240c);
            float fWidth2 = this.f240c.width() / 2.0f;
            e.c.a.b.j.h hVarC = bVar2.a.c("expansion");
            if (z) {
                if (!z2) {
                    dVar3.setRevealInfo(new e.c.a.b.n.d.e(fCenterX, fCenterY, fWidth2));
                }
                if (z2) {
                    fWidth2 = dVar3.getRevealInfo().f2640c;
                }
                float fV = d.s.y.v(fCenterX, fCenterY, 0.0f, 0.0f);
                float fV2 = d.s.y.v(fCenterX, fCenterY, fWidth, 0.0f);
                float fV3 = d.s.y.v(fCenterX, fCenterY, fWidth, fHeight);
                float fV4 = d.s.y.v(fCenterX, fCenterY, 0.0f, fHeight);
                if (fV <= fV2 || fV <= fV3 || fV <= fV4) {
                    fV = (fV2 <= fV3 || fV2 <= fV4) ? fV3 > fV4 ? fV3 : fV4 : fV2;
                }
                android.animation.Animator animatorQ = d.s.y.q(dVar3, fCenterX, fCenterY, fV);
                animatorQ.addListener(new e.c.a.b.v.c(this, dVar3));
                K(view2, hVarC.a, (int) fCenterX, (int) fCenterY, fWidth2, arrayList);
                bVar = bVar2;
                hVar = hVarC;
                animator = animatorQ;
                dVar = dVar3;
            } else {
                e.c.a.b.j.h hVar2 = hVarC;
                float f2 = dVar3.getRevealInfo().f2640c;
                android.animation.Animator animatorQ2 = d.s.y.q(dVar3, fCenterX, fCenterY, fWidth2);
                int i2 = (int) fCenterX;
                int i3 = (int) fCenterY;
                dVar = dVar3;
                K(view2, hVar2.a, i2, i3, f2, arrayList);
                long j = hVar2.a;
                long j2 = hVar2.b;
                e.c.a.b.j.g gVar = bVar2.a;
                int i4 = gVar.a.f1912c;
                long jMax = 0;
                int i5 = 0;
                while (i5 < i4) {
                    int i6 = i4;
                    e.c.a.b.j.h hVarK = gVar.a.k(i5);
                    jMax = java.lang.Math.max(jMax, hVarK.a + hVarK.b);
                    i5++;
                    i4 = i6;
                    bVar2 = bVar2;
                    hVar2 = hVar2;
                    gVar = gVar;
                }
                bVar = bVar2;
                e.c.a.b.j.h hVar3 = hVar2;
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    long j3 = j + j2;
                    if (j3 < jMax) {
                        android.animation.Animator animatorCreateCircularReveal = android.view.ViewAnimationUtils.createCircularReveal(view2, i2, i3, fWidth2, fWidth2);
                        animatorCreateCircularReveal.setStartDelay(j3);
                        animatorCreateCircularReveal.setDuration(jMax - j3);
                        arrayList.add(animatorCreateCircularReveal);
                    }
                }
                animator = animatorQ2;
                hVar = hVar3;
            }
            hVar.a(animator);
            arrayList.add(animator);
            arrayList2.add(new e.c.a.b.n.a(dVar));
        } else {
            bVar = bVar2;
        }
        I(view, view2, z, z2, bVar, arrayList);
        H(view2, z, z2, bVar, arrayList);
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        d.s.y.Y(animatorSet, arrayList);
        animatorSet.addListener(new com.google.android.material.transformation.FabTransformationBehavior.a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i7 = 0; i7 < size; i7++) {
            animatorSet.addListener((android.animation.Animator.AnimatorListener) arrayList2.get(i7));
        }
        return animatorSet;
    }

    public final float D(android.view.View view, android.view.View view2, e.c.a.b.j.i iVar) {
        float fCenterX;
        float fCenterX2;
        float f2;
        android.graphics.RectF rectF = this.f241d;
        android.graphics.RectF rectF2 = this.f242e;
        G(view, rectF);
        G(view2, rectF2);
        int i = iVar.a & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f2 = 0.0f;
                return f2 + iVar.b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f2 = fCenterX - fCenterX2;
        return f2 + iVar.b;
    }

    public final float E(android.view.View view, android.view.View view2, e.c.a.b.j.i iVar) {
        float fCenterY;
        float fCenterY2;
        float f2;
        android.graphics.RectF rectF = this.f241d;
        android.graphics.RectF rectF2 = this.f242e;
        G(view, rectF);
        G(view2, rectF2);
        int i = iVar.a & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f2 = 0.0f;
                return f2 + iVar.f2612c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f2 = fCenterY - fCenterY2;
        return f2 + iVar.f2612c;
    }

    public final float F(com.google.android.material.transformation.FabTransformationBehavior.b bVar, e.c.a.b.j.h hVar, float f2, float f3) {
        long j = hVar.a;
        long j2 = hVar.b;
        e.c.a.b.j.h hVarC = bVar.a.c("expansion");
        return e.c.a.b.j.a.a(f2, f3, hVar.b().getInterpolation((((hVarC.a + hVarC.b) + 17) - j) / j2));
    }

    public final void G(android.view.View view, android.graphics.RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f243f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public final void H(android.view.View view, boolean z, boolean z2, com.google.android.material.transformation.FabTransformationBehavior.b bVar, java.util.List list) {
        android.view.ViewGroup viewGroupM;
        android.animation.ObjectAnimator objectAnimatorOfFloat;
        if (view instanceof android.view.ViewGroup) {
            if ((view instanceof e.c.a.b.n.d) && e.c.a.b.n.c.a == 0) {
                return;
            }
            android.view.View viewFindViewById = view.findViewById(e.c.a.b.e.mtrl_child_content_container);
            if (viewFindViewById != null) {
                viewGroupM = M(viewFindViewById);
            } else {
                if ((view instanceof e.c.a.b.v.e) || (view instanceof e.c.a.b.v.d)) {
                    view = ((android.view.ViewGroup) view).getChildAt(0);
                }
                viewGroupM = M(view);
            }
            if (viewGroupM == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    e.c.a.b.j.c.a.set(viewGroupM, java.lang.Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(viewGroupM, e.c.a.b.j.c.a, 1.0f);
            } else {
                objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(viewGroupM, e.c.a.b.j.c.a, 0.0f);
            }
            bVar.a.c("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(android.view.View view, android.view.View view2, boolean z, boolean z2, com.google.android.material.transformation.FabTransformationBehavior.b bVar, java.util.List list) {
        android.animation.ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof e.c.a.b.n.d) {
            e.c.a.b.n.d dVar = (e.c.a.b.n.d) view2;
            android.content.res.ColorStateList colorStateListH = d.g.m.s.h(view);
            int colorForState = colorStateListH != null ? colorStateListH.getColorForState(view.getDrawableState(), colorStateListH.getDefaultColor()) : 0;
            int i = 16777215 & colorForState;
            if (z) {
                if (!z2) {
                    dVar.setCircularRevealScrimColor(colorForState);
                }
                objectAnimatorOfInt = android.animation.ObjectAnimator.ofInt(dVar, e.c.a.b.n.d.C0065d.a, i);
            } else {
                objectAnimatorOfInt = android.animation.ObjectAnimator.ofInt(dVar, e.c.a.b.n.d.C0065d.a, colorForState);
            }
            objectAnimatorOfInt.setEvaluator(e.c.a.b.j.b.a);
            bVar.a.c("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    @android.annotation.TargetApi(21)
    public final void J(android.view.View view, android.view.View view2, boolean z, boolean z2, com.google.android.material.transformation.FabTransformationBehavior.b bVar, java.util.List list) {
        android.animation.ObjectAnimator objectAnimatorOfFloat;
        float fK = d.g.m.s.k(view2) - (android.os.Build.VERSION.SDK_INT >= 21 ? view.getElevation() : 0.0f);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-fK);
            }
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_Z, -fK);
        }
        bVar.a.c("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    public final void K(android.view.View view, long j, int i, int i2, float f2, java.util.List<android.animation.Animator> list) {
        if (android.os.Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        android.animation.Animator animatorCreateCircularReveal = android.view.ViewAnimationUtils.createCircularReveal(view, i, i2, f2, f2);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    public final void L(android.view.View view, android.view.View view2, boolean z, boolean z2, com.google.android.material.transformation.FabTransformationBehavior.b bVar, java.util.List list, android.graphics.RectF rectF) {
        e.c.a.b.j.h hVarC;
        e.c.a.b.j.g gVar;
        java.lang.String str;
        android.animation.ObjectAnimator objectAnimatorOfFloat;
        android.animation.ObjectAnimator objectAnimatorOfFloat2;
        float fD = D(view, view2, bVar.b);
        float fE = E(view, view2, bVar.b);
        if (fD == 0.0f || fE == 0.0f) {
            hVarC = bVar.a.c("translationXLinear");
            gVar = bVar.a;
            str = "translationYLinear";
        } else if ((!z || fE >= 0.0f) && (z || fE <= 0.0f)) {
            hVarC = bVar.a.c("translationXCurveDownwards");
            gVar = bVar.a;
            str = "translationYCurveDownwards";
        } else {
            hVarC = bVar.a.c("translationXCurveUpwards");
            gVar = bVar.a;
            str = "translationYCurveUpwards";
        }
        e.c.a.b.j.h hVarC2 = gVar.c(str);
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fD);
                view2.setTranslationY(-fE);
            }
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_Y, 0.0f);
            float F = F(bVar, hVarC, -fD, 0.0f);
            float F2 = F(bVar, hVarC2, -fE, 0.0f);
            android.graphics.Rect rect = this.f240c;
            view2.getWindowVisibleDisplayFrame(rect);
            android.graphics.RectF rectF2 = this.f241d;
            rectF2.set(rect);
            android.graphics.RectF rectF3 = this.f242e;
            G(view2, rectF3);
            rectF3.offset(F, F2);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
        } else {
            objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_X, -fD);
            objectAnimatorOfFloat2 = android.animation.ObjectAnimator.ofFloat(view2, (android.util.Property<android.view.View, java.lang.Float>) android.view.View.TRANSLATION_Y, -fE);
        }
        hVarC.a(objectAnimatorOfFloat);
        hVarC2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    public final android.view.ViewGroup M(android.view.View view) {
        if (view instanceof android.view.ViewGroup) {
            return (android.view.ViewGroup) view;
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
        if (view.getVisibility() == 8) {
            throw new java.lang.IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((com.google.android.material.floatingactionbutton.FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void f(androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar) {
        if (fVar.h == 0) {
            fVar.h = 80;
        }
    }
}
