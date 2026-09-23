package e.c.a.b.k;

/* loaded from: classes.dex */
public abstract class b<V extends android.view.View> extends e.c.a.b.k.d<V> {

    /* renamed from: d, reason: collision with root package name */
    public java.lang.Runnable f2614d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.OverScroller f2615e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2616f;

    /* renamed from: g, reason: collision with root package name */
    public int f2617g;
    public int h;
    public int i;
    public android.view.VelocityTracker j;

    public class a implements java.lang.Runnable {
        public final androidx.coordinatorlayout.widget.CoordinatorLayout a;
        public final V b;

        public a(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v) {
            this.a = coordinatorLayout;
            this.b = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            android.widget.OverScroller overScroller;
            if (this.b == null || (overScroller = e.c.a.b.k.b.this.f2615e) == null) {
                return;
            }
            if (overScroller.computeScrollOffset()) {
                e.c.a.b.k.b bVar = e.c.a.b.k.b.this;
                bVar.G(this.a, this.b, bVar.f2615e.getCurrY());
                d.g.m.s.I(this.b, this);
                return;
            }
            e.c.a.b.k.b bVar2 = e.c.a.b.k.b.this;
            androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout = this.a;
            V v = this.b;
            com.google.android.material.appbar.AppBarLayout.BaseBehavior baseBehavior = (com.google.android.material.appbar.AppBarLayout.BaseBehavior) bVar2;
            if (baseBehavior == null) {
                throw null;
            }
            baseBehavior.N(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) v);
        }
    }

    public b() {
        this.f2617g = -1;
        this.i = -1;
    }

    public b(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2617g = -1;
        this.i = -1;
    }

    public abstract boolean D(V v);

    public abstract int E();

    public final int F(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return H(coordinatorLayout, v, E() - i, i2, i3);
    }

    public int G(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i) {
        return H(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public abstract int H(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3);

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.i
            if (r0 >= 0) goto L12
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.i = r0
        L12:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L1f
            boolean r0 = r4.f2616f
            if (r0 == 0) goto L1f
            return r2
        L1f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L60
            r5 = -1
            if (r0 == r2) goto L51
            if (r0 == r1) goto L2f
            r6 = 3
            if (r0 == r6) goto L51
            goto L8a
        L2f:
            int r6 = r4.f2617g
            if (r6 != r5) goto L34
            goto L8a
        L34:
            int r6 = r7.findPointerIndex(r6)
            if (r6 != r5) goto L3b
            goto L8a
        L3b:
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.h
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.i
            if (r6 <= r0) goto L8a
            r4.f2616f = r2
            r4.h = r5
            goto L8a
        L51:
            r4.f2616f = r3
            r4.f2617g = r5
            android.view.VelocityTracker r5 = r4.j
            if (r5 == 0) goto L8a
            r5.recycle()
            r5 = 0
            r4.j = r5
            goto L8a
        L60:
            r4.f2616f = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.D(r6)
            if (r2 == 0) goto L8a
            boolean r5 = r5.l(r6, r0, r1)
            if (r5 == 0) goto L8a
            r4.h = r1
            int r5 = r7.getPointerId(r3)
            r4.f2617g = r5
            android.view.VelocityTracker r5 = r4.j
            if (r5 != 0) goto L8a
            android.view.VelocityTracker r5 = android.view.VelocityTracker.obtain()
            r4.j = r5
        L8a:
            android.view.VelocityTracker r5 = r4.j
            if (r5 == 0) goto L91
            r5.addMovement(r7)
        L91:
            boolean r5 = r4.f2616f
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.k.b.i(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
        if (this.i < 0) {
            this.i = android.view.ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                android.view.VelocityTracker velocityTracker = this.j;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.j.computeCurrentVelocity(1000);
                    float yVelocity = this.j.getYVelocity(this.f2617g);
                    com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) v;
                    int i = -appBarLayout.getTotalScrollRange();
                    java.lang.Runnable runnable = this.f2614d;
                    if (runnable != null) {
                        v.removeCallbacks(runnable);
                        this.f2614d = null;
                    }
                    if (this.f2615e == null) {
                        this.f2615e = new android.widget.OverScroller(v.getContext());
                    }
                    this.f2615e.fling(0, A(), 0, java.lang.Math.round(yVelocity), 0, 0, i, 0);
                    if (this.f2615e.computeScrollOffset()) {
                        e.c.a.b.k.b.a aVar = new e.c.a.b.k.b.a(coordinatorLayout, v);
                        this.f2614d = aVar;
                        d.g.m.s.I(v, aVar);
                    } else {
                        ((com.google.android.material.appbar.AppBarLayout.BaseBehavior) this).N(coordinatorLayout, appBarLayout);
                    }
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2617g);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(iFindPointerIndex);
                int i2 = this.h - y;
                if (!this.f2616f) {
                    int iAbs = java.lang.Math.abs(i2);
                    int i3 = this.i;
                    if (iAbs > i3) {
                        this.f2616f = true;
                        i2 = i2 > 0 ? i2 - i3 : i2 + i3;
                    }
                }
                if (this.f2616f) {
                    this.h = y;
                    F(coordinatorLayout, v, i2, -((com.google.android.material.appbar.AppBarLayout) v).getDownNestedScrollRange(), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.f2616f = false;
            this.f2617g = -1;
            android.view.VelocityTracker velocityTracker2 = this.j;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.j = null;
            }
        } else {
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (!coordinatorLayout.l(v, x, y2) || !D(v)) {
                return false;
            }
            this.h = y2;
            this.f2617g = motionEvent.getPointerId(0);
            if (this.j == null) {
                this.j = android.view.VelocityTracker.obtain();
            }
        }
        android.view.VelocityTracker velocityTracker3 = this.j;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }
}
