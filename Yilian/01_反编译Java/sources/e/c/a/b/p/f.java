package e.c.a.b.p;

/* loaded from: classes.dex */
public class f extends e.c.a.b.p.e {
    public android.graphics.drawable.InsetDrawable C;

    public f(e.c.a.b.q.f fVar, e.c.a.b.s.b bVar) {
        super(fVar, bVar);
    }

    @Override // e.c.a.b.p.e
    public float c() {
        return this.o.getElevation();
    }

    @Override // e.c.a.b.p.e
    public void d(android.graphics.Rect rect) {
        if (!com.google.android.material.floatingactionbutton.FloatingActionButton.this.j) {
            rect.set(0, 0, 0, 0);
            return;
        }
        float sizeDimension = com.google.android.material.floatingactionbutton.FloatingActionButton.this.getSizeDimension() / 2.0f;
        float elevation = this.o.getElevation() + this.k;
        int iCeil = (int) java.lang.Math.ceil(e.c.a.b.s.a.a(elevation, sizeDimension, false));
        int iCeil2 = (int) java.lang.Math.ceil(elevation * 1.5f);
        rect.set(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // e.c.a.b.p.e
    public void f() {
    }

    @Override // e.c.a.b.p.e
    public void g() {
        o();
    }

    @Override // e.c.a.b.p.e
    public void h(int[] iArr) {
        e.c.a.b.q.f fVar;
        if (android.os.Build.VERSION.SDK_INT == 21) {
            float f2 = 0.0f;
            if (this.o.isEnabled()) {
                this.o.setElevation(this.i);
                if (this.o.isPressed()) {
                    fVar = this.o;
                    f2 = this.k;
                } else if (this.o.isFocused() || this.o.isHovered()) {
                    fVar = this.o;
                    f2 = this.j;
                }
                fVar.setTranslationZ(f2);
            }
            this.o.setElevation(0.0f);
            fVar = this.o;
            fVar.setTranslationZ(f2);
        }
    }

    @Override // e.c.a.b.p.e
    public void i(float f2, float f3, float f4) {
        if (android.os.Build.VERSION.SDK_INT == 21) {
            this.o.refreshDrawableState();
        } else {
            android.animation.StateListAnimator stateListAnimator = new android.animation.StateListAnimator();
            stateListAnimator.addState(e.c.a.b.p.e.w, p(f2, f4));
            stateListAnimator.addState(e.c.a.b.p.e.x, p(f2, f3));
            stateListAnimator.addState(e.c.a.b.p.e.y, p(f2, f3));
            stateListAnimator.addState(e.c.a.b.p.e.z, p(f2, f3));
            android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(android.animation.ObjectAnimator.ofFloat(this.o, "elevation", f2).setDuration(0L));
            int i = android.os.Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 24) {
                e.c.a.b.q.f fVar = this.o;
                arrayList.add(android.animation.ObjectAnimator.ofFloat(fVar, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.TRANSLATION_Z, fVar.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(android.animation.ObjectAnimator.ofFloat(this.o, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((android.animation.Animator[]) arrayList.toArray(new android.animation.Animator[0]));
            animatorSet.setInterpolator(e.c.a.b.p.e.v);
            stateListAnimator.addState(e.c.a.b.p.e.A, animatorSet);
            stateListAnimator.addState(e.c.a.b.p.e.B, p(0.0f, 0.0f));
            this.o.setStateListAnimator(stateListAnimator);
        }
        if (com.google.android.material.floatingactionbutton.FloatingActionButton.this.j) {
            o();
        }
    }

    @Override // e.c.a.b.p.e
    public void j(android.graphics.Rect rect) {
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = com.google.android.material.floatingactionbutton.FloatingActionButton.this;
        if (!floatingActionButton.j) {
            super/*android.widget.ImageButton*/.setBackgroundDrawable(null);
            return;
        }
        android.graphics.drawable.InsetDrawable insetDrawable = new android.graphics.drawable.InsetDrawable((android.graphics.drawable.Drawable) null, rect.left, rect.top, rect.right, rect.bottom);
        this.C = insetDrawable;
        super/*android.widget.ImageButton*/.setBackgroundDrawable(insetDrawable);
    }

    @Override // e.c.a.b.p.e
    public boolean k() {
        return false;
    }

    @Override // e.c.a.b.p.e
    public void m(android.content.res.ColorStateList colorStateList) {
    }

    public final android.animation.Animator p(float f2, float f3) {
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        animatorSet.play(android.animation.ObjectAnimator.ofFloat(this.o, "elevation", f2).setDuration(0L)).with(android.animation.ObjectAnimator.ofFloat(this.o, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.TRANSLATION_Z, f3).setDuration(100L));
        animatorSet.setInterpolator(e.c.a.b.p.e.v);
        return animatorSet;
    }
}
