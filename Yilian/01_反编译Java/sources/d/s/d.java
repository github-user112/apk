package d.s;

/* loaded from: classes.dex */
public class d extends d.s.i0 {

    public class a extends d.s.n {
        public final /* synthetic */ android.view.View a;

        public a(d.s.d dVar, android.view.View view) {
            this.a = view;
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) {
            d.s.c0.a.e(this.a, 1.0f);
            d.s.c0.a.a(this.a);
            kVar.v(this);
        }
    }

    public static class b extends android.animation.AnimatorListenerAdapter {
        public final android.view.View a;
        public boolean b = false;

        public b(android.view.View view) {
            this.a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            d.s.c0.a.e(this.a, 1.0f);
            if (this.b) {
                this.a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            if (d.g.m.s.y(this.a) && this.a.getLayerType() == 0) {
                this.b = true;
                this.a.setLayerType(2, null);
            }
        }
    }

    public d(int i) {
        if ((i & (-4)) != 0) {
            throw new java.lang.IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.J = i;
    }

    @Override // d.s.i0
    public android.animation.Animator J(android.view.ViewGroup viewGroup, android.view.View view, d.s.s sVar, d.s.s sVar2) {
        java.lang.Float f2;
        d.s.c0.a.c(view);
        return K(view, (sVar == null || (f2 = (java.lang.Float) sVar.a.get("android:fade:transitionAlpha")) == null) ? 1.0f : f2.floatValue(), 0.0f);
    }

    public final android.animation.Animator K(android.view.View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        d.s.c0.a.e(view, f2);
        android.animation.ObjectAnimator objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(view, d.s.c0.f2255d, f3);
        objectAnimatorOfFloat.addListener(new d.s.d.b(view));
        a(new d.s.d.a(this, view));
        return objectAnimatorOfFloat;
    }

    @Override // d.s.k
    public void g(d.s.s sVar) {
        H(sVar);
        sVar.a.put("android:fade:transitionAlpha", java.lang.Float.valueOf(d.s.c0.b(sVar.b)));
    }
}
