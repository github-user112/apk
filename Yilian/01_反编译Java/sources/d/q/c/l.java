package d.q.c;

/* loaded from: classes.dex */
public class l extends androidx.recyclerview.widget.RecyclerView.j implements androidx.recyclerview.widget.RecyclerView.n {
    public static final int[] D = {android.R.attr.state_pressed};
    public static final int[] E = new int[0];
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final android.graphics.drawable.StateListDrawable f2210c;

    /* renamed from: d, reason: collision with root package name */
    public final android.graphics.drawable.Drawable f2211d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2212e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2213f;

    /* renamed from: g, reason: collision with root package name */
    public final android.graphics.drawable.StateListDrawable f2214g;
    public final android.graphics.drawable.Drawable h;
    public final int i;
    public final int j;
    public int k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public androidx.recyclerview.widget.RecyclerView s;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];
    public final android.animation.ValueAnimator z = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
    public int A = 0;
    public final java.lang.Runnable B = new d.q.c.l.a();
    public final androidx.recyclerview.widget.RecyclerView.o C = new d.q.c.l.b();

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.q.c.l lVar = d.q.c.l.this;
            int i = lVar.A;
            if (i == 1) {
                lVar.z.cancel();
            } else if (i != 2) {
                return;
            }
            lVar.A = 3;
            android.animation.ValueAnimator valueAnimator = lVar.z;
            valueAnimator.setFloatValues(((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            lVar.z.setDuration(500);
            lVar.z.start();
        }
    }

    public class b extends androidx.recyclerview.widget.RecyclerView.o {
        public b() {
        }
    }

    public class c extends android.animation.AnimatorListenerAdapter {
        public boolean a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (this.a) {
                this.a = false;
                return;
            }
            if (((java.lang.Float) d.q.c.l.this.z.getAnimatedValue()).floatValue() == 0.0f) {
                d.q.c.l lVar = d.q.c.l.this;
                lVar.A = 0;
                lVar.h(0);
            } else {
                d.q.c.l lVar2 = d.q.c.l.this;
                lVar2.A = 2;
                lVar2.s.invalidate();
            }
        }
    }

    public class d implements android.animation.ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.q.c.l.this.f2210c.setAlpha(iFloatValue);
            d.q.c.l.this.f2211d.setAlpha(iFloatValue);
            d.q.c.l.this.s.invalidate();
        }
    }

    public l(androidx.recyclerview.widget.RecyclerView recyclerView, android.graphics.drawable.StateListDrawable stateListDrawable, android.graphics.drawable.Drawable drawable, android.graphics.drawable.StateListDrawable stateListDrawable2, android.graphics.drawable.Drawable drawable2, int i, int i2, int i3) {
        this.f2210c = stateListDrawable;
        this.f2211d = drawable;
        this.f2214g = stateListDrawable2;
        this.h = drawable2;
        this.f2212e = java.lang.Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f2213f = java.lang.Math.max(i, drawable.getIntrinsicWidth());
        this.i = java.lang.Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = java.lang.Math.max(i, drawable2.getIntrinsicWidth());
        this.a = i2;
        this.b = i3;
        this.f2210c.setAlpha(255);
        this.f2211d.setAlpha(255);
        this.z.addListener(new d.q.c.l.c());
        this.z.addUpdateListener(new d.q.c.l.d());
        androidx.recyclerview.widget.RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            androidx.recyclerview.widget.RecyclerView.k kVar = recyclerView2.l;
            if (kVar != null) {
                kVar.a("Cannot remove item decoration during a scroll  or layout");
            }
            recyclerView2.n.remove(this);
            if (recyclerView2.n.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.A();
            recyclerView2.requestLayout();
            androidx.recyclerview.widget.RecyclerView recyclerView3 = this.s;
            recyclerView3.o.remove(this);
            if (recyclerView3.p == this) {
                recyclerView3.p = null;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView4 = this.s;
            androidx.recyclerview.widget.RecyclerView.o oVar = this.C;
            java.util.List<androidx.recyclerview.widget.RecyclerView.o> list = recyclerView4.i0;
            if (list != null) {
                list.remove(oVar);
            }
            d();
        }
        this.s = recyclerView;
        androidx.recyclerview.widget.RecyclerView.k kVar2 = recyclerView.l;
        if (kVar2 != null) {
            kVar2.a("Cannot add item decoration during a scroll  or layout");
        }
        if (recyclerView.n.isEmpty()) {
            recyclerView.setWillNotDraw(false);
        }
        recyclerView.n.add(this);
        recyclerView.A();
        recyclerView.requestLayout();
        this.s.o.add(this);
        androidx.recyclerview.widget.RecyclerView recyclerView5 = this.s;
        androidx.recyclerview.widget.RecyclerView.o oVar2 = this.C;
        if (recyclerView5.i0 == null) {
            recyclerView5.i0 = new java.util.ArrayList();
        }
        recyclerView5.i0.add(oVar2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean a(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent) {
        int i = this.v;
        if (i == 1) {
            boolean zF = f(motionEvent.getX(), motionEvent.getY());
            boolean zE = e(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (zF || zE)) {
                if (zE) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zF) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                h(2);
                return true;
            }
        } else if (i == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void b(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zF = f(motionEvent.getX(), motionEvent.getY());
            boolean zE = e(motionEvent.getX(), motionEvent.getY());
            if (zF || zE) {
                if (zE) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zF) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                h(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = 0.0f;
            this.p = 0.0f;
            h(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            i();
            if (this.w == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.y;
                int i = this.b;
                iArr[0] = i;
                iArr[1] = this.q - i;
                float fMax = java.lang.Math.max(iArr[0], java.lang.Math.min(iArr[1], x));
                if (java.lang.Math.abs(this.o - fMax) >= 2.0f) {
                    int iG = g(this.p, fMax, iArr, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
                    if (iG != 0) {
                        this.s.scrollBy(iG, 0);
                    }
                    this.p = fMax;
                }
            }
            if (this.w == 2) {
                float y = motionEvent.getY();
                int[] iArr2 = this.x;
                int i2 = this.b;
                iArr2[0] = i2;
                iArr2[1] = this.r - i2;
                float fMax2 = java.lang.Math.max(iArr2[0], java.lang.Math.min(iArr2[1], y));
                if (java.lang.Math.abs(this.l - fMax2) < 2.0f) {
                    return;
                }
                int iG2 = g(this.m, fMax2, iArr2, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
                if (iG2 != 0) {
                    this.s.scrollBy(0, iG2);
                }
                this.m = fMax2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void c(boolean z) {
    }

    public final void d() {
        this.s.removeCallbacks(this.B);
    }

    public boolean e(float f2, float f3) {
        if (f3 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f2 >= i - (i2 / 2) && f2 <= (i2 / 2) + i) {
                return true;
            }
        }
        return false;
    }

    public boolean f(float f2, float f3) {
        if (d.g.m.s.o(this.s) == 1) {
            if (f2 > this.f2212e / 2) {
                return false;
            }
        } else if (f2 < this.q - this.f2212e) {
            return false;
        }
        int i = this.l;
        int i2 = this.k / 2;
        return f3 >= ((float) (i - i2)) && f3 <= ((float) (i2 + i));
    }

    public final int g(float f2, float f3, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f3 - f2) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    public void h(int i) {
        int i2;
        if (i == 2 && this.v != 2) {
            this.f2210c.setState(D);
            d();
        }
        if (i == 0) {
            this.s.invalidate();
        } else {
            i();
        }
        if (this.v != 2 || i == 2) {
            i2 = i == 1 ? 1500 : 1200;
            this.v = i;
        }
        this.f2210c.setState(E);
        d();
        this.s.postDelayed(this.B, i2);
        this.v = i;
    }

    public void i() {
        int i = this.A;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.z.cancel();
            }
        }
        this.A = 1;
        android.animation.ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0L);
        this.z.start();
    }
}
