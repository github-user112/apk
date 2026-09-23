package e.c.a.b.p;

/* loaded from: classes.dex */
public class e {
    public android.animation.Animator b;

    /* renamed from: c, reason: collision with root package name */
    public e.c.a.b.j.g f2644c;

    /* renamed from: d, reason: collision with root package name */
    public e.c.a.b.j.g f2645d;

    /* renamed from: e, reason: collision with root package name */
    public e.c.a.b.j.g f2646e;

    /* renamed from: f, reason: collision with root package name */
    public e.c.a.b.j.g f2647f;

    /* renamed from: g, reason: collision with root package name */
    public final e.c.a.b.q.d f2648g;
    public float h;
    public float i;
    public float j;
    public float k;
    public java.util.ArrayList<android.animation.Animator.AnimatorListener> m;
    public java.util.ArrayList<android.animation.Animator.AnimatorListener> n;
    public final e.c.a.b.q.f o;
    public final e.c.a.b.s.b p;
    public android.view.ViewTreeObserver.OnPreDrawListener u;
    public static final android.animation.TimeInterpolator v = e.c.a.b.j.a.b;
    public static final int[] w = {android.R.attr.state_pressed, android.R.attr.state_enabled};
    public static final int[] x = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] y = {android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] z = {android.R.attr.state_hovered, android.R.attr.state_enabled};
    public static final int[] A = {android.R.attr.state_enabled};
    public static final int[] B = new int[0];
    public int a = 0;
    public float l = 1.0f;
    public final android.graphics.Rect q = new android.graphics.Rect();
    public final android.graphics.RectF r = new android.graphics.RectF();
    public final android.graphics.RectF s = new android.graphics.RectF();
    public final android.graphics.Matrix t = new android.graphics.Matrix();

    public class a extends e.c.a.b.p.e.f {
        public a(e.c.a.b.p.e eVar) {
            super(null);
        }
    }

    public class b extends e.c.a.b.p.e.f {
        public b() {
            super(null);
        }
    }

    public class c extends e.c.a.b.p.e.f {
        public c() {
            super(null);
        }
    }

    public interface d {
    }

    /* renamed from: e.c.a.b.p.e$e, reason: collision with other inner class name */
    public class C0066e extends e.c.a.b.p.e.f {
        public C0066e() {
            super(null);
        }
    }

    public abstract class f extends android.animation.AnimatorListenerAdapter implements android.animation.ValueAnimator.AnimatorUpdateListener {
        public boolean a;

        public f(e.c.a.b.p.b bVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            throw null;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
            if (!this.a) {
                throw null;
            }
            valueAnimator.getAnimatedFraction();
            throw null;
        }
    }

    public e(e.c.a.b.q.f fVar, e.c.a.b.s.b bVar) {
        this.o = fVar;
        this.p = bVar;
        e.c.a.b.q.d dVar = new e.c.a.b.q.d();
        this.f2648g = dVar;
        dVar.a(w, b(new e.c.a.b.p.e.c()));
        this.f2648g.a(x, b(new e.c.a.b.p.e.b()));
        this.f2648g.a(y, b(new e.c.a.b.p.e.b()));
        this.f2648g.a(z, b(new e.c.a.b.p.e.b()));
        this.f2648g.a(A, b(new e.c.a.b.p.e.C0066e()));
        this.f2648g.a(B, b(new e.c.a.b.p.e.a(this)));
        this.h = this.o.getRotation();
    }

    public final android.animation.AnimatorSet a(e.c.a.b.j.g gVar, float f2, float f3, float f4) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.animation.ObjectAnimator objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(this.o, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.ALPHA, f2);
        gVar.c("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        android.animation.ObjectAnimator objectAnimatorOfFloat2 = android.animation.ObjectAnimator.ofFloat(this.o, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.SCALE_X, f3);
        gVar.c("scale").a(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        android.animation.ObjectAnimator objectAnimatorOfFloat3 = android.animation.ObjectAnimator.ofFloat(this.o, (android.util.Property<e.c.a.b.q.f, java.lang.Float>) android.view.View.SCALE_Y, f3);
        gVar.c("scale").a(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        this.t.reset();
        this.o.getDrawable();
        android.animation.ObjectAnimator objectAnimatorOfObject = android.animation.ObjectAnimator.ofObject(this.o, new e.c.a.b.j.e(), new e.c.a.b.j.f(), new android.graphics.Matrix(this.t));
        gVar.c("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        d.s.y.Y(animatorSet, arrayList);
        return animatorSet;
    }

    public final android.animation.ValueAnimator b(e.c.a.b.p.e.f fVar) {
        android.animation.ValueAnimator valueAnimator = new android.animation.ValueAnimator();
        valueAnimator.setInterpolator(v);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public float c() {
        return this.i;
    }

    public void d(android.graphics.Rect rect) {
        throw null;
    }

    public boolean e() {
        return this.o.getVisibility() != 0 ? this.a == 2 : this.a != 1;
    }

    public void f() {
        e.c.a.b.q.d dVar = this.f2648g;
        android.animation.ValueAnimator valueAnimator = dVar.f2653c;
        if (valueAnimator != null) {
            valueAnimator.end();
            dVar.f2653c = null;
        }
    }

    public void g() {
    }

    public void h(int[] iArr) {
        e.c.a.b.q.d.b bVar;
        android.animation.ValueAnimator valueAnimator;
        e.c.a.b.q.d dVar = this.f2648g;
        int size = dVar.a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                bVar = null;
                break;
            }
            bVar = dVar.a.get(i);
            if (android.util.StateSet.stateSetMatches(bVar.a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        e.c.a.b.q.d.b bVar2 = dVar.b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null && (valueAnimator = dVar.f2653c) != null) {
            valueAnimator.cancel();
            dVar.f2653c = null;
        }
        dVar.b = bVar;
        if (bVar != null) {
            android.animation.ValueAnimator valueAnimator2 = bVar.b;
            dVar.f2653c = valueAnimator2;
            valueAnimator2.start();
        }
    }

    public void i(float f2, float f3, float f4) {
    }

    public void j(android.graphics.Rect rect) {
    }

    public boolean k() {
        return true;
    }

    public final void l(float f2) {
        this.l = f2;
        android.graphics.Matrix matrix = this.t;
        matrix.reset();
        this.o.getDrawable();
        this.o.setImageMatrix(matrix);
    }

    public void m(android.content.res.ColorStateList colorStateList) {
    }

    public final boolean n() {
        return d.g.m.s.A(this.o) && !this.o.isInEditMode();
    }

    public final void o() {
        android.graphics.Rect rect = this.q;
        d(rect);
        j(rect);
        e.c.a.b.s.b bVar = this.p;
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        com.google.android.material.floatingactionbutton.FloatingActionButton.b bVar2 = (com.google.android.material.floatingactionbutton.FloatingActionButton.b) bVar;
        com.google.android.material.floatingactionbutton.FloatingActionButton.this.k.set(i, i2, i3, i4);
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = com.google.android.material.floatingactionbutton.FloatingActionButton.this;
        int i5 = floatingActionButton.i;
        floatingActionButton.setPadding(i + i5, i2 + i5, i3 + i5, i4 + i5);
    }
}
