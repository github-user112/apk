package com.google.android.material.behavior;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends android.view.View> extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<V> {
    public d.i.b.a a;
    public com.google.android.material.behavior.SwipeDismissBehavior.b b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f211c;

    /* renamed from: d, reason: collision with root package name */
    public float f212d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public int f213e = 2;

    /* renamed from: f, reason: collision with root package name */
    public float f214f = 0.5f;

    /* renamed from: g, reason: collision with root package name */
    public float f215g = 0.0f;
    public float h = 0.5f;
    public final d.i.b.a.c i = new com.google.android.material.behavior.SwipeDismissBehavior.a();

    public class a extends d.i.b.a.c {
        public int a;
        public int b = -1;

        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
        @Override // d.i.b.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int a(android.view.View r3, int r4, int r5) {
            /*
                r2 = this;
                int r5 = d.g.m.s.o(r3)
                r0 = 1
                if (r5 != r0) goto L9
                r5 = 1
                goto La
            L9:
                r5 = 0
            La:
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r1 = r1.f213e
                if (r1 != 0) goto L24
                if (r5 == 0) goto L1c
            L12:
                int r5 = r2.a
                int r3 = r3.getWidth()
                int r5 = r5 - r3
                int r3 = r2.a
                goto L37
            L1c:
                int r5 = r2.a
                int r3 = r3.getWidth()
                int r3 = r3 + r5
                goto L37
            L24:
                if (r1 != r0) goto L29
                if (r5 == 0) goto L12
                goto L1c
            L29:
                int r5 = r2.a
                int r0 = r3.getWidth()
                int r5 = r5 - r0
                int r0 = r2.a
                int r3 = r3.getWidth()
                int r3 = r3 + r0
            L37:
                int r4 = java.lang.Math.max(r5, r4)
                int r3 = java.lang.Math.min(r4, r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.a(android.view.View, int, int):int");
        }

        @Override // d.i.b.a.c
        public int b(android.view.View view, int i, int i2) {
            return view.getTop();
        }

        @Override // d.i.b.a.c
        public int c(android.view.View view) {
            return view.getWidth();
        }

        @Override // d.i.b.a.c
        public void e(android.view.View view, int i) {
            this.b = i;
            this.a = view.getLeft();
            android.view.ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // d.i.b.a.c
        public void f(int i) {
            com.google.android.material.behavior.SwipeDismissBehavior.b bVar = com.google.android.material.behavior.SwipeDismissBehavior.this.b;
            if (bVar != null) {
                bVar.b(i);
            }
        }

        @Override // d.i.b.a.c
        public void g(android.view.View view, int i, int i2, int i3, int i4) {
            float width = (view.getWidth() * com.google.android.material.behavior.SwipeDismissBehavior.this.f215g) + this.a;
            float width2 = (view.getWidth() * com.google.android.material.behavior.SwipeDismissBehavior.this.h) + this.a;
            float f2 = i;
            if (f2 <= width) {
                view.setAlpha(1.0f);
            } else if (f2 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(com.google.android.material.behavior.SwipeDismissBehavior.B(0.0f, 1.0f - ((f2 - width) / (width2 - width)), 1.0f));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
        @Override // d.i.b.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void h(android.view.View r7, float r8, float r9) {
            /*
                r6 = this;
                r9 = -1
                r6.b = r9
                int r9 = r7.getWidth()
                r0 = 0
                r1 = 0
                r2 = 1
                int r3 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r3 == 0) goto L3e
                int r3 = d.g.m.s.o(r7)
                if (r3 != r2) goto L16
                r3 = 1
                goto L17
            L16:
                r3 = 0
            L17:
                com.google.android.material.behavior.SwipeDismissBehavior r4 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r4 = r4.f213e
                r5 = 2
                if (r4 != r5) goto L1f
                goto L2c
            L1f:
                if (r4 != 0) goto L30
                if (r3 == 0) goto L28
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 >= 0) goto L2e
                goto L2c
            L28:
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 <= 0) goto L2e
            L2c:
                r8 = 1
                goto L5b
            L2e:
                r8 = 0
                goto L5b
            L30:
                if (r4 != r2) goto L2e
                if (r3 == 0) goto L39
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 <= 0) goto L2e
                goto L3d
            L39:
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 >= 0) goto L2e
            L3d:
                goto L2c
            L3e:
                int r8 = r7.getLeft()
                int r0 = r6.a
                int r8 = r8 - r0
                int r0 = r7.getWidth()
                float r0 = (float) r0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r3 = r3.f214f
                float r0 = r0 * r3
                int r0 = java.lang.Math.round(r0)
                int r8 = java.lang.Math.abs(r8)
                if (r8 < r0) goto L2e
                goto L2c
            L5b:
                if (r8 == 0) goto L6a
                int r8 = r7.getLeft()
                int r0 = r6.a
                if (r8 >= r0) goto L67
                int r0 = r0 - r9
                goto L68
            L67:
                int r0 = r0 + r9
            L68:
                r1 = 1
                goto L6c
            L6a:
                int r0 = r6.a
            L6c:
                com.google.android.material.behavior.SwipeDismissBehavior r8 = com.google.android.material.behavior.SwipeDismissBehavior.this
                d.i.b.a r8 = r8.a
                int r9 = r7.getTop()
                boolean r8 = r8.t(r0, r9)
                if (r8 == 0) goto L85
                com.google.android.material.behavior.SwipeDismissBehavior$c r8 = new com.google.android.material.behavior.SwipeDismissBehavior$c
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r8.<init>(r7, r1)
                d.g.m.s.I(r7, r8)
                goto L90
            L85:
                if (r1 == 0) goto L90
                com.google.android.material.behavior.SwipeDismissBehavior r8 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$b r8 = r8.b
                if (r8 == 0) goto L90
                r8.a(r7)
            L90:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.h(android.view.View, float, float):void");
        }

        @Override // d.i.b.a.c
        public boolean i(android.view.View view, int i) {
            return this.b == -1 && com.google.android.material.behavior.SwipeDismissBehavior.this.A(view);
        }
    }

    public interface b {
        void a(android.view.View view);

        void b(int i);
    }

    public class c implements java.lang.Runnable {
        public final android.view.View a;
        public final boolean b;

        public c(android.view.View view, boolean z) {
            this.a = view;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.material.behavior.SwipeDismissBehavior.b bVar;
            d.i.b.a aVar = com.google.android.material.behavior.SwipeDismissBehavior.this.a;
            if (aVar != null && aVar.i(true)) {
                d.g.m.s.I(this.a, this);
            } else {
                if (!this.b || (bVar = com.google.android.material.behavior.SwipeDismissBehavior.this.b) == null) {
                    return;
                }
                bVar.a(this.a);
            }
        }
    }

    public static float B(float f2, float f3, float f4) {
        return java.lang.Math.min(java.lang.Math.max(f2, f3), f4);
    }

    public boolean A(android.view.View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean i(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
        boolean zL = this.f211c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zL = coordinatorLayout.l(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f211c = zL;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f211c = false;
        }
        if (!zL) {
            return false;
        }
        if (this.a == null) {
            this.a = new d.i.b.a(coordinatorLayout.getContext(), coordinatorLayout, this.i);
        }
        return this.a.u(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
        d.i.b.a aVar = this.a;
        if (aVar == null) {
            return false;
        }
        aVar.n(motionEvent);
        return true;
    }
}
