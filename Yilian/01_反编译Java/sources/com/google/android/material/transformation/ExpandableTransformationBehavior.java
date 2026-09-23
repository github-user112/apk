package com.google.android.material.transformation;

/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends com.google.android.material.transformation.ExpandableBehavior {
    public android.animation.AnimatorSet b;

    public class a extends android.animation.AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            com.google.android.material.transformation.ExpandableTransformationBehavior.this.b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    public boolean B(android.view.View view, android.view.View view2, boolean z, boolean z2) {
        boolean z3 = this.b != null;
        if (z3) {
            this.b.cancel();
        }
        android.animation.AnimatorSet animatorSetC = C(view, view2, z, z3);
        this.b = animatorSetC;
        animatorSetC.addListener(new com.google.android.material.transformation.ExpandableTransformationBehavior.a());
        this.b.start();
        if (!z2) {
            this.b.end();
        }
        return true;
    }

    public abstract android.animation.AnimatorSet C(android.view.View view, android.view.View view2, boolean z, boolean z2);
}
