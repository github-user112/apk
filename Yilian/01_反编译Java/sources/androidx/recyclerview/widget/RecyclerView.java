package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public class RecyclerView extends android.view.ViewGroup implements d.g.m.e {
    public static final boolean A0;
    public static final boolean B0;
    public static final boolean C0;
    public static final boolean D0;
    public static final boolean E0;
    public static final java.lang.Class<?>[] F0;
    public static final android.view.animation.Interpolator G0;
    public static final int[] y0 = {android.R.attr.nestedScrollingEnabled};
    public static final int[] z0 = {android.R.attr.clipToPadding};
    public final android.view.accessibility.AccessibilityManager A;
    public boolean B;
    public boolean C;
    public int D;
    public int F;
    public androidx.recyclerview.widget.RecyclerView.g G;
    public android.widget.EdgeEffect H;
    public android.widget.EdgeEffect I;
    public android.widget.EdgeEffect J;
    public android.widget.EdgeEffect K;
    public androidx.recyclerview.widget.RecyclerView.h L;
    public int M;
    public int N;
    public android.view.VelocityTracker O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public androidx.recyclerview.widget.RecyclerView.m U;
    public final int V;
    public final int W;
    public final androidx.recyclerview.widget.RecyclerView.s a;
    public float a0;
    public final androidx.recyclerview.widget.RecyclerView.q b;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.t f143c;
    public boolean c0;

    /* renamed from: d, reason: collision with root package name */
    public d.q.c.a f144d;
    public final androidx.recyclerview.widget.RecyclerView.w d0;

    /* renamed from: e, reason: collision with root package name */
    public d.q.c.b f145e;
    public d.q.c.m e0;

    /* renamed from: f, reason: collision with root package name */
    public final d.q.c.x f146f;
    public d.q.c.m.b f0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f147g;
    public final androidx.recyclerview.widget.RecyclerView.u g0;
    public final android.graphics.Rect h;
    public androidx.recyclerview.widget.RecyclerView.o h0;
    public final android.graphics.Rect i;
    public java.util.List<androidx.recyclerview.widget.RecyclerView.o> i0;
    public final android.graphics.RectF j;
    public boolean j0;
    public androidx.recyclerview.widget.RecyclerView.d k;
    public boolean k0;
    public androidx.recyclerview.widget.RecyclerView.k l;
    public androidx.recyclerview.widget.RecyclerView.h.b l0;
    public androidx.recyclerview.widget.RecyclerView.r m;
    public boolean m0;
    public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.j> n;
    public d.q.c.u n0;
    public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.n> o;
    public androidx.recyclerview.widget.RecyclerView.f o0;
    public androidx.recyclerview.widget.RecyclerView.n p;
    public final int[] p0;
    public boolean q;
    public d.g.m.g q0;
    public boolean r;
    public final int[] r0;
    public boolean s;
    public final int[] s0;
    public boolean t;
    public final int[] t0;
    public int u;
    public final int[] u0;
    public boolean v;
    public final java.util.List<androidx.recyclerview.widget.RecyclerView.x> v0;
    public boolean w;
    public java.lang.Runnable w0;
    public boolean x;
    public final d.q.c.x.b x0;
    public int y;
    public boolean z;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.RecyclerView.h hVar = androidx.recyclerview.widget.RecyclerView.this.L;
            if (hVar != null) {
                d.q.c.k kVar = (d.q.c.k) hVar;
                boolean z = !kVar.h.isEmpty();
                boolean z2 = !kVar.j.isEmpty();
                boolean z3 = !kVar.k.isEmpty();
                boolean z4 = !kVar.i.isEmpty();
                if (z || z2 || z4 || z3) {
                    java.util.Iterator<androidx.recyclerview.widget.RecyclerView.x> it = kVar.h.iterator();
                    while (it.hasNext()) {
                        androidx.recyclerview.widget.RecyclerView.x next = it.next();
                        android.view.View view = next.a;
                        android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        kVar.q.add(next);
                        viewPropertyAnimatorAnimate.setDuration(kVar.f149d).alpha(0.0f).setListener(new d.q.c.f(kVar, next, viewPropertyAnimatorAnimate, view)).start();
                    }
                    kVar.h.clear();
                    if (z2) {
                        java.util.ArrayList<d.q.c.k.b> arrayList = new java.util.ArrayList<>();
                        arrayList.addAll(kVar.j);
                        kVar.m.add(arrayList);
                        kVar.j.clear();
                        d.q.c.c cVar = new d.q.c.c(kVar, arrayList);
                        if (z) {
                            d.g.m.s.J(arrayList.get(0).a.a, cVar, kVar.f149d);
                        } else {
                            cVar.run();
                        }
                    }
                    if (z3) {
                        java.util.ArrayList<d.q.c.k.a> arrayList2 = new java.util.ArrayList<>();
                        arrayList2.addAll(kVar.k);
                        kVar.n.add(arrayList2);
                        kVar.k.clear();
                        d.q.c.d dVar = new d.q.c.d(kVar, arrayList2);
                        if (z) {
                            d.g.m.s.J(arrayList2.get(0).a.a, dVar, kVar.f149d);
                        } else {
                            dVar.run();
                        }
                    }
                    if (z4) {
                        java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> arrayList3 = new java.util.ArrayList<>();
                        arrayList3.addAll(kVar.i);
                        kVar.l.add(arrayList3);
                        kVar.i.clear();
                        d.q.c.e eVar = new d.q.c.e(kVar, arrayList3);
                        if (z || z2 || z3) {
                            d.g.m.s.J(arrayList3.get(0).a, eVar, java.lang.Math.max(z2 ? kVar.f150e : 0L, z3 ? kVar.f151f : 0L) + (z ? kVar.f149d : 0L));
                        } else {
                            eVar.run();
                        }
                    }
                }
            }
            androidx.recyclerview.widget.RecyclerView.this.m0 = false;
        }
    }

    public static class b implements android.view.animation.Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class c implements d.q.c.x.b {
        public c() {
        }
    }

    public static abstract class d<VH extends androidx.recyclerview.widget.RecyclerView.x> {
    }

    public static abstract class e {
    }

    public interface f {
        int a(int i, int i2);
    }

    public static class g {
        public android.widget.EdgeEffect a(androidx.recyclerview.widget.RecyclerView recyclerView) {
            return new android.widget.EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class h {
        public androidx.recyclerview.widget.RecyclerView.h.b a = null;
        public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.h.a> b = new java.util.ArrayList<>();

        /* renamed from: c, reason: collision with root package name */
        public long f148c = 120;

        /* renamed from: d, reason: collision with root package name */
        public long f149d = 120;

        /* renamed from: e, reason: collision with root package name */
        public long f150e = 250;

        /* renamed from: f, reason: collision with root package name */
        public long f151f = 250;

        public interface a {
            void a();
        }

        public interface b {
        }

        public static class c {
            public int a;
            public int b;
        }

        public static int a(androidx.recyclerview.widget.RecyclerView.x xVar) {
            int i = xVar.i & 14;
            if (xVar.h()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int i2 = xVar.f180d;
            androidx.recyclerview.widget.RecyclerView recyclerView = xVar.q;
            int iT = recyclerView == null ? -1 : recyclerView.t(xVar);
            return (i2 == -1 || iT == -1 || i2 == iT) ? i : i | 2048;
        }

        public boolean b(androidx.recyclerview.widget.RecyclerView.x xVar, java.util.List<java.lang.Object> list) {
            return !((d.q.c.v) this).f2233g || xVar.h();
        }

        public final void c(androidx.recyclerview.widget.RecyclerView.x xVar) {
            androidx.recyclerview.widget.RecyclerView.h.b bVar = this.a;
            if (bVar != null) {
                androidx.recyclerview.widget.RecyclerView.i iVar = (androidx.recyclerview.widget.RecyclerView.i) bVar;
                if (iVar == null) {
                    throw null;
                }
                boolean z = true;
                xVar.q(true);
                if (xVar.f183g != null && xVar.h == null) {
                    xVar.f183g = null;
                }
                xVar.h = null;
                if ((xVar.i & 16) != 0) {
                    return;
                }
                androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                android.view.View view = xVar.a;
                recyclerView.P();
                d.q.c.b bVar2 = recyclerView.f145e;
                int iIndexOfChild = ((d.q.c.s) bVar2.a).a.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    bVar2.i(view);
                } else if (bVar2.b.d(iIndexOfChild)) {
                    bVar2.b.e(iIndexOfChild);
                    bVar2.i(view);
                    ((d.q.c.s) bVar2.a).c(iIndexOfChild);
                } else {
                    z = false;
                }
                if (z) {
                    androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(view);
                    recyclerView.b.k(xVarU);
                    recyclerView.b.h(xVarU);
                }
                recyclerView.R(!z);
                if (z || !xVar.k()) {
                    return;
                }
                androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(xVar.a, false);
            }
        }

        public final void d() {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                this.b.get(i).a();
            }
            this.b.clear();
        }

        public abstract void e(androidx.recyclerview.widget.RecyclerView.x xVar);

        public abstract void f();

        public abstract boolean g();

        public androidx.recyclerview.widget.RecyclerView.h.c h(androidx.recyclerview.widget.RecyclerView.x xVar) {
            androidx.recyclerview.widget.RecyclerView.h.c cVar = new androidx.recyclerview.widget.RecyclerView.h.c();
            android.view.View view = xVar.a;
            cVar.a = view.getLeft();
            cVar.b = view.getTop();
            view.getRight();
            view.getBottom();
            return cVar;
        }
    }

    public class i implements androidx.recyclerview.widget.RecyclerView.h.b {
        public i() {
        }
    }

    public static abstract class j {
    }

    public static abstract class k {
        public d.q.c.b a;
        public androidx.recyclerview.widget.RecyclerView b;

        /* renamed from: c, reason: collision with root package name */
        public final d.q.c.w.b f152c = new androidx.recyclerview.widget.RecyclerView.k.a();

        /* renamed from: d, reason: collision with root package name */
        public final d.q.c.w.b f153d = new androidx.recyclerview.widget.RecyclerView.k.b();

        /* renamed from: e, reason: collision with root package name */
        public d.q.c.w f154e = new d.q.c.w(this.f152c);

        /* renamed from: f, reason: collision with root package name */
        public d.q.c.w f155f = new d.q.c.w(this.f153d);

        /* renamed from: g, reason: collision with root package name */
        public boolean f156g = false;
        public boolean h = false;
        public boolean i = false;
        public boolean j = true;
        public boolean k = true;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;

        public class a implements d.q.c.w.b {
            public a() {
            }

            @Override // d.q.c.w.b
            public int a() {
                androidx.recyclerview.widget.RecyclerView.k kVar = androidx.recyclerview.widget.RecyclerView.k.this;
                return kVar.o - kVar.v();
            }

            @Override // d.q.c.w.b
            public int b(android.view.View view) {
                androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
                if (androidx.recyclerview.widget.RecyclerView.k.this != null) {
                    return (view.getLeft() - ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.left) - ((android.view.ViewGroup.MarginLayoutParams) lVar).leftMargin;
                }
                throw null;
            }

            @Override // d.q.c.w.b
            public android.view.View c(int i) {
                return androidx.recyclerview.widget.RecyclerView.k.this.o(i);
            }

            @Override // d.q.c.w.b
            public int d() {
                return androidx.recyclerview.widget.RecyclerView.k.this.u();
            }

            @Override // d.q.c.w.b
            public int e(android.view.View view) {
                androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
                if (androidx.recyclerview.widget.RecyclerView.k.this != null) {
                    return view.getRight() + ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.right + ((android.view.ViewGroup.MarginLayoutParams) lVar).rightMargin;
                }
                throw null;
            }
        }

        public class b implements d.q.c.w.b {
            public b() {
            }

            @Override // d.q.c.w.b
            public int a() {
                androidx.recyclerview.widget.RecyclerView.k kVar = androidx.recyclerview.widget.RecyclerView.k.this;
                return kVar.p - kVar.t();
            }

            @Override // d.q.c.w.b
            public int b(android.view.View view) {
                androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
                if (androidx.recyclerview.widget.RecyclerView.k.this != null) {
                    return (view.getTop() - ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.top) - ((android.view.ViewGroup.MarginLayoutParams) lVar).topMargin;
                }
                throw null;
            }

            @Override // d.q.c.w.b
            public android.view.View c(int i) {
                return androidx.recyclerview.widget.RecyclerView.k.this.o(i);
            }

            @Override // d.q.c.w.b
            public int d() {
                return androidx.recyclerview.widget.RecyclerView.k.this.w();
            }

            @Override // d.q.c.w.b
            public int e(android.view.View view) {
                androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
                if (androidx.recyclerview.widget.RecyclerView.k.this != null) {
                    return view.getBottom() + ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.bottom + ((android.view.ViewGroup.MarginLayoutParams) lVar).bottomMargin;
                }
                throw null;
            }
        }

        public static class c {
            public int a;
            public int b;

            /* renamed from: c, reason: collision with root package name */
            public boolean f157c;

            /* renamed from: d, reason: collision with root package name */
            public boolean f158d;
        }

        public static int e(int i, int i2, int i3) {
            int mode = android.view.View.MeasureSpec.getMode(i);
            int size = android.view.View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? java.lang.Math.max(i2, i3) : size : java.lang.Math.min(size, java.lang.Math.max(i2, i3));
        }

        public static androidx.recyclerview.widget.RecyclerView.k.c y(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
            androidx.recyclerview.widget.RecyclerView.k.c cVar = new androidx.recyclerview.widget.RecyclerView.k.c();
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.q.b.RecyclerView, i, i2);
            cVar.a = typedArrayObtainStyledAttributes.getInt(d.q.b.RecyclerView_android_orientation, 1);
            cVar.b = typedArrayObtainStyledAttributes.getInt(d.q.b.RecyclerView_spanCount, 1);
            cVar.f157c = typedArrayObtainStyledAttributes.getBoolean(d.q.b.RecyclerView_reverseLayout, false);
            cVar.f158d = typedArrayObtainStyledAttributes.getBoolean(d.q.b.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return cVar;
        }

        public int A() {
            return 0;
        }

        public boolean B() {
            return this.i;
        }

        public boolean C() {
            return false;
        }

        public void D() {
        }

        public boolean E() {
            return false;
        }

        public void F() {
        }

        @java.lang.Deprecated
        public void G() {
        }

        public void H(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.q qVar) {
            G();
        }

        public void I(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            androidx.recyclerview.widget.RecyclerView.q qVar = this.b.b;
            J(accessibilityEvent);
        }

        public void J(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
        }

        public void K(android.view.View view, d.g.m.a0.d dVar) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(view);
            if (xVarU == null || xVarU.i() || this.a.h(xVarU.a)) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            L(recyclerView.b, recyclerView.g0, view, dVar);
        }

        public void L(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar, android.view.View view, d.g.m.a0.d dVar) {
            dVar.g(d.g.m.a0.d.c.a(c() ? x(view) : 0, 1, b() ? x(view) : 0, 1, false, false));
        }

        public android.view.View M() {
            return null;
        }

        public void N(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        }

        public void O(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public void P(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public void Q(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        }

        public void R() {
        }

        public void S(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, java.lang.Object obj) {
            R();
        }

        public void T(int i, int i2) {
            this.b.j(i, i2);
        }

        @java.lang.Deprecated
        public boolean U(androidx.recyclerview.widget.RecyclerView recyclerView) {
            return recyclerView.z();
        }

        public boolean V(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.View view, android.view.View view2) {
            return U(recyclerView);
        }

        public void W(android.os.Parcelable parcelable) {
        }

        public android.os.Parcelable X() {
            return null;
        }

        public void Y(int i) {
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[PHI: r0
  0x0068: PHI (r0v6 int) = (r0v2 int), (r0v10 int) binds: [B:22:0x0059, B:15:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean Z(int r5) {
            /*
                r4 = this;
                androidx.recyclerview.widget.RecyclerView r0 = r4.b
                r1 = 0
                if (r0 != 0) goto L6
                return r1
            L6:
                r2 = 4096(0x1000, float:5.74E-42)
                r3 = 1
                if (r5 == r2) goto L3e
                r2 = 8192(0x2000, float:1.14794E-41)
                if (r5 == r2) goto L12
                r5 = 0
                r0 = 0
                goto L69
            L12:
                r5 = -1
                boolean r0 = r0.canScrollVertically(r5)
                if (r0 == 0) goto L27
                int r0 = r4.p
                int r2 = r4.w()
                int r0 = r0 - r2
                int r2 = r4.t()
                int r0 = r0 - r2
                int r0 = -r0
                goto L28
            L27:
                r0 = 0
            L28:
                androidx.recyclerview.widget.RecyclerView r2 = r4.b
                boolean r5 = r2.canScrollHorizontally(r5)
                if (r5 == 0) goto L68
                int r5 = r4.o
                int r2 = r4.u()
                int r5 = r5 - r2
                int r2 = r4.v()
                int r5 = r5 - r2
                int r5 = -r5
                goto L69
            L3e:
                boolean r5 = r0.canScrollVertically(r3)
                if (r5 == 0) goto L52
                int r5 = r4.p
                int r0 = r4.w()
                int r5 = r5 - r0
                int r0 = r4.t()
                int r5 = r5 - r0
                r0 = r5
                goto L53
            L52:
                r0 = 0
            L53:
                androidx.recyclerview.widget.RecyclerView r5 = r4.b
                boolean r5 = r5.canScrollHorizontally(r3)
                if (r5 == 0) goto L68
                int r5 = r4.o
                int r2 = r4.u()
                int r5 = r5 - r2
                int r2 = r4.v()
                int r5 = r5 - r2
                goto L69
            L68:
                r5 = 0
            L69:
                if (r0 != 0) goto L6e
                if (r5 != 0) goto L6e
                return r1
            L6e:
                androidx.recyclerview.widget.RecyclerView r1 = r4.b
                r1.O(r5, r0)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.k.Z(int):boolean");
        }

        public void a(java.lang.String str) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.e(str);
            }
        }

        public boolean a0() {
            return false;
        }

        public boolean b() {
            return false;
        }

        public void b0(androidx.recyclerview.widget.RecyclerView.q qVar) {
            for (int iP = p() - 1; iP >= 0; iP--) {
                if (!androidx.recyclerview.widget.RecyclerView.u(o(iP)).r()) {
                    d0(iP, qVar);
                }
            }
        }

        public boolean c() {
            return false;
        }

        public void c0(androidx.recyclerview.widget.RecyclerView.q qVar) {
            int size = qVar.a.size();
            for (int i = size - 1; i >= 0; i--) {
                android.view.View view = qVar.a.get(i).a;
                androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(view);
                if (!xVarU.r()) {
                    xVarU.q(false);
                    if (xVarU.k()) {
                        this.b.removeDetachedView(view, false);
                    }
                    androidx.recyclerview.widget.RecyclerView.h hVar = this.b.L;
                    if (hVar != null) {
                        hVar.e(xVarU);
                    }
                    xVarU.q(true);
                    androidx.recyclerview.widget.RecyclerView.x xVarU2 = androidx.recyclerview.widget.RecyclerView.u(view);
                    xVarU2.m = null;
                    xVarU2.n = false;
                    xVarU2.c();
                    qVar.h(xVarU2);
                }
            }
            qVar.a.clear();
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> arrayList = qVar.b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public boolean d(androidx.recyclerview.widget.RecyclerView.l lVar) {
            return lVar != null;
        }

        public void d0(int i, androidx.recyclerview.widget.RecyclerView.q qVar) {
            android.view.View viewO = o(i);
            e0(i);
            qVar.g(viewO);
        }

        public void e0(int i) {
            d.q.c.b bVar;
            int iD;
            android.view.View viewA;
            if (o(i) == null || (viewA = ((d.q.c.s) bVar.a).a((iD = (bVar = this.a).d(i)))) == null) {
                return;
            }
            if (bVar.b.e(iD)) {
                bVar.i(viewA);
            }
            ((d.q.c.s) bVar.a).c(iD);
        }

        public int f(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0012  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean f0(androidx.recyclerview.widget.RecyclerView r8, android.view.View r9, android.graphics.Rect r10, boolean r11, boolean r12) {
            /*
                r7 = this;
                int[] r9 = r7.q(r9, r10)
                r10 = 0
                r0 = r9[r10]
                r1 = 1
                r9 = r9[r1]
                if (r12 == 0) goto L49
                android.view.View r12 = r8.getFocusedChild()
                if (r12 != 0) goto L14
            L12:
                r12 = 0
                goto L47
            L14:
                int r2 = r7.u()
                int r3 = r7.w()
                int r4 = r7.o
                int r5 = r7.v()
                int r4 = r4 - r5
                int r5 = r7.p
                int r6 = r7.t()
                int r5 = r5 - r6
                androidx.recyclerview.widget.RecyclerView r6 = r7.b
                android.graphics.Rect r6 = r6.h
                androidx.recyclerview.widget.RecyclerView.v(r12, r6)
                int r12 = r6.left
                int r12 = r12 - r0
                if (r12 >= r4) goto L12
                int r12 = r6.right
                int r12 = r12 - r0
                if (r12 <= r2) goto L12
                int r12 = r6.top
                int r12 = r12 - r9
                if (r12 >= r5) goto L12
                int r12 = r6.bottom
                int r12 = r12 - r9
                if (r12 > r3) goto L46
                goto L12
            L46:
                r12 = 1
            L47:
                if (r12 == 0) goto L4e
            L49:
                if (r0 != 0) goto L4f
                if (r9 == 0) goto L4e
                goto L4f
            L4e:
                return r10
            L4f:
                if (r11 == 0) goto L55
                r8.scrollBy(r0, r9)
                goto L58
            L55:
                r8.O(r0, r9)
            L58:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.k.f0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public int g(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        public void g0() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int h(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        public void h0(androidx.recyclerview.widget.RecyclerView recyclerView) {
            int height;
            if (recyclerView == null) {
                this.b = null;
                this.a = null;
                height = 0;
                this.o = 0;
            } else {
                this.b = recyclerView;
                this.a = recyclerView.f145e;
                this.o = recyclerView.getWidth();
                height = recyclerView.getHeight();
            }
            this.p = height;
            this.m = 1073741824;
            this.n = 1073741824;
        }

        public int i(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        public boolean i0() {
            return false;
        }

        public int j(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        public int k(androidx.recyclerview.widget.RecyclerView.u uVar) {
            return 0;
        }

        public abstract androidx.recyclerview.widget.RecyclerView.l l();

        public androidx.recyclerview.widget.RecyclerView.l m(android.content.Context context, android.util.AttributeSet attributeSet) {
            return new androidx.recyclerview.widget.RecyclerView.l(context, attributeSet);
        }

        public androidx.recyclerview.widget.RecyclerView.l n(android.view.ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof androidx.recyclerview.widget.RecyclerView.l ? new androidx.recyclerview.widget.RecyclerView.l((androidx.recyclerview.widget.RecyclerView.l) layoutParams) : layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.RecyclerView.l((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.RecyclerView.l(layoutParams);
        }

        public android.view.View o(int i) {
            d.q.c.b bVar = this.a;
            if (bVar == null) {
                return null;
            }
            return ((d.q.c.s) bVar.a).a(bVar.d(i));
        }

        public int p() {
            d.q.c.b bVar = this.a;
            if (bVar != null) {
                return bVar.c();
            }
            return 0;
        }

        public final int[] q(android.view.View view, android.graphics.Rect rect) {
            int[] iArr = new int[2];
            int iU = u();
            int iW = w();
            int iV = this.o - v();
            int iT = this.p - t();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i = left - iU;
            int iMin = java.lang.Math.min(0, i);
            int i2 = top - iW;
            int iMin2 = java.lang.Math.min(0, i2);
            int i3 = iWidth - iV;
            int iMax = java.lang.Math.max(0, i3);
            int iMax2 = java.lang.Math.max(0, iHeight - iT);
            if (s() != 1) {
                if (iMin == 0) {
                    iMin = java.lang.Math.min(i, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = java.lang.Math.max(iMin, i3);
            }
            if (iMin2 == 0) {
                iMin2 = java.lang.Math.min(i2, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        public int r(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            return 1;
        }

        public int s() {
            return d.g.m.s.o(this.b);
        }

        public int t() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int u() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int v() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int w() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int x(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).a();
        }

        public int z(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.b;
            return 1;
        }
    }

    public static class l extends android.view.ViewGroup.MarginLayoutParams {
        public androidx.recyclerview.widget.RecyclerView.x a;
        public final android.graphics.Rect b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f159c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f160d;

        public l(int i, int i2) {
            super(i, i2);
            this.b = new android.graphics.Rect();
            this.f159c = true;
            this.f160d = false;
        }

        public l(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new android.graphics.Rect();
            this.f159c = true;
            this.f160d = false;
        }

        public l(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = new android.graphics.Rect();
            this.f159c = true;
            this.f160d = false;
        }

        public l(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = new android.graphics.Rect();
            this.f159c = true;
            this.f160d = false;
        }

        public l(androidx.recyclerview.widget.RecyclerView.l lVar) {
            super((android.view.ViewGroup.LayoutParams) lVar);
            this.b = new android.graphics.Rect();
            this.f159c = true;
            this.f160d = false;
        }

        public int a() {
            return this.a.d();
        }
    }

    public static abstract class m {
    }

    public interface n {
        boolean a(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent);

        void b(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent);

        void c(boolean z);
    }

    public static abstract class o {
    }

    public static class p {
        public android.util.SparseArray<androidx.recyclerview.widget.RecyclerView.p.a> a = new android.util.SparseArray<>();
        public int b = 0;

        public static class a {
            public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> a = new java.util.ArrayList<>();
            public int b = 5;

            /* renamed from: c, reason: collision with root package name */
            public long f161c = 0;

            /* renamed from: d, reason: collision with root package name */
            public long f162d = 0;
        }

        public final androidx.recyclerview.widget.RecyclerView.p.a a(int i) {
            androidx.recyclerview.widget.RecyclerView.p.a aVar = this.a.get(i);
            if (aVar != null) {
                return aVar;
            }
            androidx.recyclerview.widget.RecyclerView.p.a aVar2 = new androidx.recyclerview.widget.RecyclerView.p.a();
            this.a.put(i, aVar2);
            return aVar2;
        }
    }

    public final class q {
        public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> a = new java.util.ArrayList<>();
        public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> b = null;

        /* renamed from: c, reason: collision with root package name */
        public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> f163c = new java.util.ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        public final java.util.List<androidx.recyclerview.widget.RecyclerView.x> f164d = java.util.Collections.unmodifiableList(this.a);

        /* renamed from: e, reason: collision with root package name */
        public int f165e = 2;

        /* renamed from: f, reason: collision with root package name */
        public int f166f = 2;

        /* renamed from: g, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.p f167g;

        public q() {
        }

        public void a(androidx.recyclerview.widget.RecyclerView.x xVar, boolean z) {
            androidx.recyclerview.widget.RecyclerView.g(xVar);
            if (xVar.f(16384)) {
                xVar.p(0, 16384);
                d.g.m.s.L(xVar.a, null);
            }
            if (z) {
                androidx.recyclerview.widget.RecyclerView.r rVar = androidx.recyclerview.widget.RecyclerView.this.m;
                if (rVar != null) {
                    rVar.a(xVar);
                }
                androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                if (recyclerView.g0 != null) {
                    recyclerView.f146f.b(xVar);
                }
            }
            xVar.q = null;
            androidx.recyclerview.widget.RecyclerView.p pVarD = d();
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> arrayList = pVarD.a(0).a;
            if (pVarD.a.get(0).b <= arrayList.size()) {
                return;
            }
            xVar.o();
            arrayList.add(xVar);
        }

        public void b() {
            this.a.clear();
            e();
        }

        public int c(int i) {
            if (i >= 0 && i < androidx.recyclerview.widget.RecyclerView.this.g0.a()) {
                androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                return !recyclerView.g0.f173g ? i : recyclerView.f144d.f(i, 0);
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("invalid position ");
            sb.append(i);
            sb.append(". State ");
            sb.append("item count is ");
            sb.append(androidx.recyclerview.widget.RecyclerView.this.g0.a());
            throw new java.lang.IndexOutOfBoundsException(e.a.c.a.a.H(androidx.recyclerview.widget.RecyclerView.this, sb));
        }

        public androidx.recyclerview.widget.RecyclerView.p d() {
            if (this.f167g == null) {
                this.f167g = new androidx.recyclerview.widget.RecyclerView.p();
            }
            return this.f167g;
        }

        public void e() {
            for (int size = this.f163c.size() - 1; size >= 0; size--) {
                f(size);
            }
            this.f163c.clear();
            if (androidx.recyclerview.widget.RecyclerView.C0) {
                d.q.c.m.b bVar = androidx.recyclerview.widget.RecyclerView.this.f0;
                int[] iArr = bVar.f2219c;
                if (iArr != null) {
                    java.util.Arrays.fill(iArr, -1);
                }
                bVar.f2220d = 0;
            }
        }

        public void f(int i) {
            a(this.f163c.get(i), true);
            this.f163c.remove(i);
        }

        public void g(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(view);
            if (xVarU.k()) {
                androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(view, false);
            }
            if (xVarU.j()) {
                xVarU.m.k(xVarU);
            } else if (xVarU.t()) {
                xVarU.c();
            }
            h(xVarU);
        }

        public void h(androidx.recyclerview.widget.RecyclerView.x xVar) {
            if (xVar.j() || xVar.a.getParent() != null) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Scrapped or attached views may not be recycled. isScrap:");
                sbO.append(xVar.j());
                sbO.append(" isAttached:");
                sbO.append(xVar.a.getParent() != null);
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(androidx.recyclerview.widget.RecyclerView.this, sbO));
            }
            if (xVar.k()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb.append(xVar);
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(androidx.recyclerview.widget.RecyclerView.this, sb));
            }
            if (xVar.r()) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(androidx.recyclerview.widget.RecyclerView.this, e.a.c.a.a.o("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            }
            int i = xVar.i & 16;
            if (i == 0) {
                throw null;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (i == 0) {
                throw null;
            }
            recyclerView.f146f.b(xVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void i(android.view.View r5) {
            /*
                r4 = this;
                androidx.recyclerview.widget.RecyclerView$x r5 = androidx.recyclerview.widget.RecyclerView.u(r5)
                r0 = 12
                boolean r0 = r5.f(r0)
                r1 = 0
                if (r0 != 0) goto L3d
                boolean r0 = r5.l()
                if (r0 == 0) goto L3d
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$h r0 = r0.L
                r2 = 1
                if (r0 == 0) goto L27
                java.util.List r3 = r5.e()
                boolean r0 = r0.b(r5, r3)
                if (r0 == 0) goto L25
                goto L27
            L25:
                r0 = 0
                goto L28
            L27:
                r0 = 1
            L28:
                if (r0 == 0) goto L2b
                goto L3d
            L2b:
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$x> r0 = r4.b
                if (r0 != 0) goto L36
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r4.b = r0
            L36:
                r5.m = r4
                r5.n = r2
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$x> r0 = r4.b
                goto L52
            L3d:
                boolean r0 = r5.h()
                if (r0 == 0) goto L4c
                boolean r0 = r5.i()
                if (r0 == 0) goto L4a
                goto L4c
            L4a:
                r5 = 0
                throw r5
            L4c:
                r5.m = r4
                r5.n = r1
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$x> r0 = r4.a
            L52:
                r0.add(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.i(android.view.View):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x01c8  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0209  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0148  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.x j(int r11, boolean r12, long r13) {
            /*
                Method dump skipped, instructions count: 749
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.j(int, boolean, long):androidx.recyclerview.widget.RecyclerView$x");
        }

        public void k(androidx.recyclerview.widget.RecyclerView.x xVar) {
            (xVar.n ? this.b : this.a).remove(xVar);
            xVar.m = null;
            xVar.n = false;
            xVar.c();
        }

        public void l() {
            androidx.recyclerview.widget.RecyclerView.k kVar = androidx.recyclerview.widget.RecyclerView.this.l;
            this.f166f = this.f165e + (kVar != null ? kVar.l : 0);
            for (int size = this.f163c.size() - 1; size >= 0 && this.f163c.size() > this.f166f; size--) {
                f(size);
            }
        }
    }

    public interface r {
        void a(androidx.recyclerview.widget.RecyclerView.x xVar);
    }

    public class s extends androidx.recyclerview.widget.RecyclerView.e {
        public s(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }
    }

    public static class t extends d.i.a.a {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.RecyclerView.t> CREATOR = new androidx.recyclerview.widget.RecyclerView.t.a();

        /* renamed from: c, reason: collision with root package name */
        public android.os.Parcelable f168c;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.recyclerview.widget.RecyclerView.t> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.RecyclerView.t(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new androidx.recyclerview.widget.RecyclerView.t[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public androidx.recyclerview.widget.RecyclerView.t createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.recyclerview.widget.RecyclerView.t(parcel, classLoader);
            }
        }

        public t(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f168c = parcel.readParcelable(classLoader == null ? androidx.recyclerview.widget.RecyclerView.k.class.getClassLoader() : classLoader);
        }

        public t(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeParcelable(this.f168c, 0);
        }
    }

    public static class u {
        public int a = -1;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public int f169c = 0;

        /* renamed from: d, reason: collision with root package name */
        public int f170d = 1;

        /* renamed from: e, reason: collision with root package name */
        public int f171e = 0;

        /* renamed from: f, reason: collision with root package name */
        public boolean f172f = false;

        /* renamed from: g, reason: collision with root package name */
        public boolean f173g = false;
        public boolean h = false;
        public boolean i = false;
        public boolean j = false;
        public boolean k = false;

        public int a() {
            return this.f173g ? this.b - this.f169c : this.f171e;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("State{mTargetPosition=");
            sbO.append(this.a);
            sbO.append(", mData=");
            sbO.append((java.lang.Object) null);
            sbO.append(", mItemCount=");
            sbO.append(this.f171e);
            sbO.append(", mIsMeasuring=");
            sbO.append(this.i);
            sbO.append(", mPreviousLayoutItemCount=");
            sbO.append(this.b);
            sbO.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            sbO.append(this.f169c);
            sbO.append(", mStructureChanged=");
            sbO.append(this.f172f);
            sbO.append(", mInPreLayout=");
            sbO.append(this.f173g);
            sbO.append(", mRunSimpleAnimations=");
            sbO.append(this.j);
            sbO.append(", mRunPredictiveAnimations=");
            sbO.append(this.k);
            sbO.append('}');
            return sbO.toString();
        }
    }

    public static abstract class v {
    }

    public class w implements java.lang.Runnable {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public android.widget.OverScroller f174c;

        /* renamed from: d, reason: collision with root package name */
        public android.view.animation.Interpolator f175d = androidx.recyclerview.widget.RecyclerView.G0;

        /* renamed from: e, reason: collision with root package name */
        public boolean f176e = false;

        /* renamed from: f, reason: collision with root package name */
        public boolean f177f = false;

        public w() {
            this.f174c = new android.widget.OverScroller(androidx.recyclerview.widget.RecyclerView.this.getContext(), androidx.recyclerview.widget.RecyclerView.G0);
        }

        public void a() {
            if (this.f176e) {
                this.f177f = true;
            } else {
                androidx.recyclerview.widget.RecyclerView.this.removeCallbacks(this);
                d.g.m.s.I(androidx.recyclerview.widget.RecyclerView.this, this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (recyclerView.l == null) {
                recyclerView.removeCallbacks(this);
                this.f174c.abortAnimation();
                return;
            }
            this.f177f = false;
            this.f176e = true;
            recyclerView.i();
            android.widget.OverScroller overScroller = this.f174c;
            androidx.recyclerview.widget.RecyclerView.k kVar = androidx.recyclerview.widget.RecyclerView.this.l;
            if (overScroller.computeScrollOffset()) {
                int[] iArr = androidx.recyclerview.widget.RecyclerView.this.s0;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i = currX - this.a;
                int i2 = currY - this.b;
                this.a = currX;
                this.b = currY;
                if (androidx.recyclerview.widget.RecyclerView.this.l(i, i2, iArr, null, 1)) {
                    i -= iArr[0];
                    i2 -= iArr[1];
                }
                if (!androidx.recyclerview.widget.RecyclerView.this.n.isEmpty()) {
                    androidx.recyclerview.widget.RecyclerView.this.invalidate();
                }
                if (androidx.recyclerview.widget.RecyclerView.this.getOverScrollMode() != 2) {
                    androidx.recyclerview.widget.RecyclerView.this.h(i, i2);
                }
                androidx.recyclerview.widget.RecyclerView.this.m(0, 0, 0, 0, null, 1);
                if (!androidx.recyclerview.widget.RecyclerView.this.awakenScrollBars()) {
                    androidx.recyclerview.widget.RecyclerView.this.invalidate();
                }
                boolean z = (i == 0 && i2 == 0) || (i != 0 && androidx.recyclerview.widget.RecyclerView.this.l.b() && i == 0) || (i2 != 0 && androidx.recyclerview.widget.RecyclerView.this.l.c() && i2 == 0);
                if (overScroller.isFinished() || !(z || androidx.recyclerview.widget.RecyclerView.this.w(1))) {
                    androidx.recyclerview.widget.RecyclerView.this.setScrollState(0);
                    if (androidx.recyclerview.widget.RecyclerView.C0) {
                        d.q.c.m.b bVar = androidx.recyclerview.widget.RecyclerView.this.f0;
                        int[] iArr2 = bVar.f2219c;
                        if (iArr2 != null) {
                            java.util.Arrays.fill(iArr2, -1);
                        }
                        bVar.f2220d = 0;
                    }
                    androidx.recyclerview.widget.RecyclerView.this.a(1);
                } else {
                    a();
                    androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
                    d.q.c.m mVar = recyclerView2.e0;
                    if (mVar != null) {
                        mVar.a(recyclerView2, i, i2);
                    }
                }
            }
            this.f176e = false;
            if (this.f177f) {
                a();
            }
        }
    }

    public static abstract class x {
        public static final java.util.List<java.lang.Object> r = java.util.Collections.emptyList();
        public final android.view.View a;
        public java.lang.ref.WeakReference<androidx.recyclerview.widget.RecyclerView> b;

        /* renamed from: c, reason: collision with root package name */
        public int f179c;

        /* renamed from: d, reason: collision with root package name */
        public int f180d;

        /* renamed from: e, reason: collision with root package name */
        public long f181e;

        /* renamed from: f, reason: collision with root package name */
        public int f182f;

        /* renamed from: g, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.x f183g;
        public androidx.recyclerview.widget.RecyclerView.x h;
        public int i;
        public java.util.List<java.lang.Object> j;
        public java.util.List<java.lang.Object> k;
        public int l;
        public androidx.recyclerview.widget.RecyclerView.q m;
        public boolean n;
        public int o;
        public int p;
        public androidx.recyclerview.widget.RecyclerView q;

        public void a(java.lang.Object obj) {
            if (obj == null) {
                b(1024);
                return;
            }
            if ((1024 & this.i) == 0) {
                if (this.j == null) {
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    this.j = arrayList;
                    this.k = java.util.Collections.unmodifiableList(arrayList);
                }
                this.j.add(obj);
            }
        }

        public void b(int i) {
            this.i = i | this.i;
        }

        public void c() {
            this.i &= -33;
        }

        public final int d() {
            int i = this.f182f;
            return i == -1 ? this.f179c : i;
        }

        public java.util.List<java.lang.Object> e() {
            if ((this.i & 1024) != 0) {
                return r;
            }
            java.util.List<java.lang.Object> list = this.j;
            return (list == null || list.size() == 0) ? r : this.k;
        }

        public boolean f(int i) {
            return (i & this.i) != 0;
        }

        public boolean g() {
            return (this.i & 1) != 0;
        }

        public boolean h() {
            return (this.i & 4) != 0;
        }

        public boolean i() {
            return (this.i & 8) != 0;
        }

        public boolean j() {
            return this.m != null;
        }

        public boolean k() {
            return (this.i & 256) != 0;
        }

        public boolean l() {
            return (this.i & 2) != 0;
        }

        public boolean m() {
            return (this.i & 2) != 0;
        }

        public void n(int i, boolean z) {
            if (this.f180d == -1) {
                this.f180d = this.f179c;
            }
            if (this.f182f == -1) {
                this.f182f = this.f179c;
            }
            if (z) {
                this.f182f += i;
            }
            this.f179c += i;
            throw null;
        }

        public void o() {
            this.i = 0;
            this.f179c = -1;
            this.f180d = -1;
            this.f181e = -1L;
            this.f182f = -1;
            this.l = 0;
            this.f183g = null;
            this.h = null;
            java.util.List<java.lang.Object> list = this.j;
            if (list != null) {
                list.clear();
            }
            this.i &= -1025;
            this.o = 0;
            this.p = -1;
            androidx.recyclerview.widget.RecyclerView.g(this);
        }

        public void p(int i, int i2) {
            this.i = (i & i2) | (this.i & (i2 ^ (-1)));
        }

        public final void q(boolean z) {
            int i;
            int i2 = this.l;
            int i3 = z ? i2 - 1 : i2 + 1;
            this.l = i3;
            if (i3 < 0) {
                this.l = 0;
                android.util.Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i3 == 1) {
                i = this.i | 16;
            } else if (!z || this.l != 0) {
                return;
            } else {
                i = this.i & (-17);
            }
            this.i = i;
        }

        public boolean r() {
            return (this.i & 128) != 0;
        }

        public void s() {
            this.m.k(this);
        }

        public boolean t() {
            return (this.i & 32) != 0;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ViewHolder{");
            sbO.append(java.lang.Integer.toHexString(hashCode()));
            sbO.append(" position=");
            sbO.append(this.f179c);
            sbO.append(" id=");
            sbO.append(this.f181e);
            sbO.append(", oldPos=");
            sbO.append(this.f180d);
            sbO.append(", pLpos:");
            sbO.append(this.f182f);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(sbO.toString());
            if (j()) {
                sb.append(" scrap ");
                sb.append(this.n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (h()) {
                sb.append(" invalid");
            }
            if (!g()) {
                sb.append(" unbound");
            }
            if ((this.i & 2) != 0) {
                sb.append(" update");
            }
            if (i()) {
                sb.append(" removed");
            }
            if (r()) {
                sb.append(" ignored");
            }
            if (k()) {
                sb.append(" tmpDetached");
            }
            if ((this.i & 16) == 0) {
                throw null;
            }
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o(" not recyclable(");
            sbO2.append(this.l);
            sbO2.append(")");
            sb.append(sbO2.toString());
            if (!((this.i & 512) != 0 || h())) {
                throw null;
            }
            sb.append(" undefined adapter position");
            throw null;
        }
    }

    static {
        int i2 = android.os.Build.VERSION.SDK_INT;
        A0 = i2 == 18 || i2 == 19 || i2 == 20;
        B0 = android.os.Build.VERSION.SDK_INT >= 23;
        C0 = android.os.Build.VERSION.SDK_INT >= 21;
        D0 = false;
        E0 = false;
        java.lang.Class<?> cls = java.lang.Integer.TYPE;
        F0 = new java.lang.Class[]{android.content.Context.class, android.util.AttributeSet.class, cls, cls};
        G0 = new androidx.recyclerview.widget.RecyclerView.b();
    }

    public RecyclerView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(1:48)(10:49|(1:52)|51|94|54|(1:56)(1:57)|58|90|59|65)|94|54|(0)(0)|58|90|59|65) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0268, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x026a, code lost:
    
        r0 = r3.getConstructor(new java.lang.Class[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0270, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0280, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0281, code lost:
    
        r0.initCause(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02a1, code lost:
    
        throw new java.lang.IllegalStateException(r22.getPositionDescription() + ": Error creating LayoutManager " + r2, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0236 A[Catch: ClassCastException -> 0x02a2, IllegalAccessException -> 0x02c1, InstantiationException -> 0x02e0, InvocationTargetException -> 0x02fd, ClassNotFoundException -> 0x031a, TryCatch #4 {ClassCastException -> 0x02a2, ClassNotFoundException -> 0x031a, IllegalAccessException -> 0x02c1, InstantiationException -> 0x02e0, InvocationTargetException -> 0x02fd, blocks: (B:54:0x0230, B:56:0x0236, B:58:0x0243, B:59:0x024d, B:65:0x0272, B:63:0x026a, B:67:0x0281, B:68:0x02a1, B:57:0x023f), top: B:94:0x0230 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x023f A[Catch: ClassCastException -> 0x02a2, IllegalAccessException -> 0x02c1, InstantiationException -> 0x02e0, InvocationTargetException -> 0x02fd, ClassNotFoundException -> 0x031a, TryCatch #4 {ClassCastException -> 0x02a2, ClassNotFoundException -> 0x031a, IllegalAccessException -> 0x02c1, InstantiationException -> 0x02e0, InvocationTargetException -> 0x02fd, blocks: (B:54:0x0230, B:56:0x0236, B:58:0x0243, B:59:0x024d, B:65:0x0272, B:63:0x026a, B:67:0x0281, B:68:0x02a1, B:57:0x023f), top: B:94:0x0230 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecyclerView(android.content.Context r21, android.util.AttributeSet r22, int r23) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public static void g(androidx.recyclerview.widget.RecyclerView.x xVar) {
        java.lang.ref.WeakReference<androidx.recyclerview.widget.RecyclerView> weakReference = xVar.b;
        if (weakReference != null) {
            java.lang.Object parent = weakReference.get();
            while (true) {
                for (android.view.View view = (android.view.View) parent; view != null; view = null) {
                    if (view == xVar.a) {
                        return;
                    }
                    parent = view.getParent();
                    if (parent instanceof android.view.View) {
                        break;
                    }
                }
                xVar.b = null;
                return;
            }
        }
    }

    private d.g.m.g getScrollingChildHelper() {
        if (this.q0 == null) {
            this.q0 = new d.g.m.g(this);
        }
        return this.q0;
    }

    public static androidx.recyclerview.widget.RecyclerView.x u(android.view.View view) {
        if (view == null) {
            return null;
        }
        return ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).a;
    }

    public static void v(android.view.View view, android.graphics.Rect rect) {
        androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
        android.graphics.Rect rect2 = lVar.b;
        rect.set((view.getLeft() - rect2.left) - ((android.view.ViewGroup.MarginLayoutParams) lVar).leftMargin, (view.getTop() - rect2.top) - ((android.view.ViewGroup.MarginLayoutParams) lVar).topMargin, view.getRight() + rect2.right + ((android.view.ViewGroup.MarginLayoutParams) lVar).rightMargin, view.getBottom() + rect2.bottom + ((android.view.ViewGroup.MarginLayoutParams) lVar).bottomMargin);
    }

    public void A() {
        int iF = this.f145e.f();
        for (int i2 = 0; i2 < iF; i2++) {
            ((androidx.recyclerview.widget.RecyclerView.l) this.f145e.e(i2).getLayoutParams()).f159c = true;
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
        int size = qVar.f163c.size();
        for (int i3 = 0; i3 < size; i3++) {
            androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) qVar.f163c.get(i3).a.getLayoutParams();
            if (lVar != null) {
                lVar.f159c = true;
            }
        }
    }

    public void B(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int iF = this.f145e.f();
        for (int i5 = 0; i5 < iF; i5++) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = u(this.f145e.e(i5));
            if (xVarU != null && !xVarU.r()) {
                int i6 = xVarU.f179c;
                if (i6 >= i4) {
                    xVarU.n(-i3, z);
                    throw null;
                }
                if (i6 >= i2) {
                    xVarU.b(8);
                    xVarU.n(-i3, z);
                    throw null;
                }
            }
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
        int size = qVar.f163c.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            androidx.recyclerview.widget.RecyclerView.x xVar = qVar.f163c.get(size);
            if (xVar != null) {
                int i7 = xVar.f179c;
                if (i7 >= i4) {
                    xVar.n(-i3, z);
                    throw null;
                }
                if (i7 >= i2) {
                    xVar.b(8);
                    qVar.f(size);
                }
            }
        }
    }

    public void C() {
    }

    public void D() {
        this.D++;
    }

    public void E(boolean z) {
        int i2;
        int i3 = this.D - 1;
        this.D = i3;
        if (i3 < 1) {
            this.D = 0;
            if (z) {
                int i4 = this.y;
                this.y = 0;
                if (i4 != 0) {
                    android.view.accessibility.AccessibilityManager accessibilityManager = this.A;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        android.view.accessibility.AccessibilityEvent accessibilityEventObtain = android.view.accessibility.AccessibilityEvent.obtain();
                        accessibilityEventObtain.setEventType(2048);
                        if (android.os.Build.VERSION.SDK_INT >= 19) {
                            accessibilityEventObtain.setContentChangeTypes(i4);
                        }
                        sendAccessibilityEventUnchecked(accessibilityEventObtain);
                    }
                }
                for (int size = this.v0.size() - 1; size >= 0; size--) {
                    androidx.recyclerview.widget.RecyclerView.x xVar = this.v0.get(size);
                    if (xVar.a.getParent() == this && !xVar.r() && (i2 = xVar.p) != -1) {
                        d.g.m.s.S(xVar.a, i2);
                        xVar.p = -1;
                    }
                }
                this.v0.clear();
            }
        }
    }

    public final void F(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.N) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.N = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.R = x2;
            this.P = x2;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.S = y;
            this.Q = y;
        }
    }

    public void G() {
    }

    public final void H() {
        boolean z;
        boolean z2 = false;
        if (this.B) {
            d.q.c.a aVar = this.f144d;
            aVar.l(aVar.b);
            aVar.l(aVar.f2183c);
            aVar.f2187g = 0;
            if (this.C) {
                this.l.O(this);
            }
        }
        if (this.L != null && this.l.i0()) {
            this.f144d.j();
        } else {
            this.f144d.c();
        }
        boolean z3 = this.j0 || this.k0;
        androidx.recyclerview.widget.RecyclerView.u uVar = this.g0;
        if (!this.t || this.L == null || (!this.B && !z3 && !this.l.f156g)) {
            z = false;
        } else {
            if (this.B) {
                throw null;
            }
            z = true;
        }
        uVar.j = z;
        androidx.recyclerview.widget.RecyclerView.u uVar2 = this.g0;
        if (uVar2.j && z3 && !this.B) {
            if (this.L != null && this.l.i0()) {
                z2 = true;
            }
        }
        uVar2.k = z2;
    }

    public void I(androidx.recyclerview.widget.RecyclerView.x xVar, androidx.recyclerview.widget.RecyclerView.h.c cVar) {
        xVar.p(0, 8192);
        if (this.g0.h && xVar.l() && !xVar.i() && !xVar.r()) {
            throw null;
        }
        this.f146f.a(xVar, cVar);
    }

    public void J() {
        androidx.recyclerview.widget.RecyclerView.h hVar = this.L;
        if (hVar != null) {
            hVar.f();
        }
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            kVar.b0(this.b);
            this.l.c0(this.b);
        }
        this.b.b();
    }

    public final void K(android.view.View view, android.view.View view2) {
        android.view.View view3 = view2 != null ? view2 : view;
        this.h.set(0, 0, view3.getWidth(), view3.getHeight());
        android.view.ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.l) {
            androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) layoutParams;
            if (!lVar.f159c) {
                android.graphics.Rect rect = lVar.b;
                android.graphics.Rect rect2 = this.h;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.h);
            offsetRectIntoDescendantCoords(view, this.h);
        }
        this.l.f0(this, view, this.h, !this.t, view2 == null);
    }

    public final void L() {
        android.view.VelocityTracker velocityTracker = this.O;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        a(0);
        android.widget.EdgeEffect edgeEffect = this.H;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.H.isFinished();
        }
        android.widget.EdgeEffect edgeEffect2 = this.I;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.I.isFinished();
        }
        android.widget.EdgeEffect edgeEffect3 = this.J;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.J.isFinished();
        }
        android.widget.EdgeEffect edgeEffect4 = this.K;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        if (zIsFinished) {
            d.g.m.s.H(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean M(int r11, int r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.M(int, int, android.view.MotionEvent):boolean");
    }

    public boolean N(androidx.recyclerview.widget.RecyclerView.x xVar, int i2) {
        if (!z()) {
            throw null;
        }
        xVar.p = i2;
        this.v0.add(xVar);
        return false;
    }

    public void O(int i2, int i3) {
        int iRound;
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null) {
            android.util.Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.w) {
            return;
        }
        int i4 = !kVar.b() ? 0 : i2;
        int i5 = !this.l.c() ? 0 : i3;
        if (i4 == 0 && i5 == 0) {
            return;
        }
        androidx.recyclerview.widget.RecyclerView.w wVar = this.d0;
        if (wVar == null) {
            throw null;
        }
        int iAbs = java.lang.Math.abs(i4);
        int iAbs2 = java.lang.Math.abs(i5);
        boolean z = iAbs > iAbs2;
        int iSqrt = (int) java.lang.Math.sqrt(0);
        int iSqrt2 = (int) java.lang.Math.sqrt((i5 * i5) + (i4 * i4));
        androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
        int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
        int i6 = width / 2;
        float f2 = width;
        float f3 = i6;
        float fSin = (((float) java.lang.Math.sin((java.lang.Math.min(1.0f, (iSqrt2 * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
        if (iSqrt > 0) {
            iRound = java.lang.Math.round(java.lang.Math.abs(fSin / iSqrt) * 1000.0f) * 4;
        } else {
            if (!z) {
                iAbs = iAbs2;
            }
            iRound = (int) (((iAbs / f2) + 1.0f) * 300.0f);
        }
        int iMin = java.lang.Math.min(iRound, 2000);
        android.view.animation.Interpolator interpolator = G0;
        if (wVar.f175d != interpolator) {
            wVar.f175d = interpolator;
            wVar.f174c = new android.widget.OverScroller(androidx.recyclerview.widget.RecyclerView.this.getContext(), interpolator);
        }
        androidx.recyclerview.widget.RecyclerView.this.setScrollState(2);
        wVar.b = 0;
        wVar.a = 0;
        wVar.f174c.startScroll(0, 0, i4, i5, iMin);
        if (android.os.Build.VERSION.SDK_INT < 23) {
            wVar.f174c.computeScrollOffset();
        }
        wVar.a();
    }

    public void P() {
        int i2 = this.u + 1;
        this.u = i2;
        if (i2 != 1 || this.w) {
            return;
        }
        this.v = false;
    }

    public boolean Q(int i2, int i3) {
        return getScrollingChildHelper().h(i2, i3);
    }

    public void R(boolean z) {
        if (this.u < 1) {
            this.u = 1;
        }
        if (!z && !this.w) {
            this.v = false;
        }
        if (this.u == 1) {
            if (z && this.v && !this.w) {
                androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
            }
            if (!this.w) {
                this.v = false;
            }
        }
        this.u--;
    }

    public void S() {
        setScrollState(0);
        T();
    }

    public final void T() {
        androidx.recyclerview.widget.RecyclerView.w wVar = this.d0;
        androidx.recyclerview.widget.RecyclerView.this.removeCallbacks(wVar);
        wVar.f174c.abortAnimation();
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
    }

    @Override // d.g.m.e
    public void a(int i2) {
        getScrollingChildHelper().i(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(java.util.ArrayList<android.view.View> arrayList, int i2, int i3) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null || !kVar.E()) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.l) && this.l.d((androidx.recyclerview.widget.RecyclerView.l) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.b()) {
            return this.l.f(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.b()) {
            return this.l.g(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.b()) {
            return this.l.h(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.c()) {
            return this.l.i(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.c()) {
            return this.l.j(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null && kVar.c()) {
            return this.l.k(this.g0);
        }
        return 0;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().d(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(android.util.SparseArray<android.os.Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(android.util.SparseArray<android.os.Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        boolean z;
        float paddingRight;
        float paddingBottom;
        super.draw(canvas);
        int size = this.n.size();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            d.q.c.l lVar = (d.q.c.l) this.n.get(i2);
            if (lVar.q != lVar.s.getWidth() || lVar.r != lVar.s.getHeight()) {
                lVar.q = lVar.s.getWidth();
                lVar.r = lVar.s.getHeight();
                lVar.h(0);
            } else if (lVar.A != 0) {
                if (lVar.t) {
                    int i3 = lVar.q;
                    int i4 = lVar.f2212e;
                    int i5 = i3 - i4;
                    int i6 = lVar.l;
                    int i7 = lVar.k;
                    int i8 = i6 - (i7 / 2);
                    lVar.f2210c.setBounds(0, 0, i4, i7);
                    lVar.f2211d.setBounds(0, 0, lVar.f2213f, lVar.r);
                    if (d.g.m.s.o(lVar.s) == 1) {
                        lVar.f2211d.draw(canvas);
                        canvas.translate(lVar.f2212e, i8);
                        canvas.scale(-1.0f, 1.0f);
                        lVar.f2210c.draw(canvas);
                        canvas.scale(1.0f, 1.0f);
                        i5 = lVar.f2212e;
                    } else {
                        canvas.translate(i5, 0.0f);
                        lVar.f2211d.draw(canvas);
                        canvas.translate(0.0f, i8);
                        lVar.f2210c.draw(canvas);
                    }
                    canvas.translate(-i5, -i8);
                }
                if (lVar.u) {
                    int i9 = lVar.r;
                    int i10 = lVar.i;
                    int i11 = lVar.o;
                    int i12 = lVar.n;
                    lVar.f2214g.setBounds(0, 0, i12, i10);
                    lVar.h.setBounds(0, 0, lVar.q, lVar.j);
                    canvas.translate(0.0f, i9 - i10);
                    lVar.h.draw(canvas);
                    canvas.translate(i11 - (i12 / 2), 0.0f);
                    lVar.f2214g.draw(canvas);
                    canvas.translate(-r7, -r4);
                }
            }
            i2++;
        }
        android.widget.EdgeEffect edgeEffect = this.H;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom2 = this.f147g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom2, 0.0f);
            android.widget.EdgeEffect edgeEffect2 = this.H;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        android.widget.EdgeEffect edgeEffect3 = this.I;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f147g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            android.widget.EdgeEffect edgeEffect4 = this.I;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        android.widget.EdgeEffect edgeEffect5 = this.J;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f147g ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            android.widget.EdgeEffect edgeEffect6 = this.J;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        android.widget.EdgeEffect edgeEffect7 = this.K;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f147g) {
                paddingRight = getPaddingRight() + (-getWidth());
                paddingBottom = getPaddingBottom() + (-getHeight());
            } else {
                paddingRight = -getWidth();
                paddingBottom = -getHeight();
            }
            canvas.translate(paddingRight, paddingBottom);
            android.widget.EdgeEffect edgeEffect8 = this.K;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.L == null || this.n.size() <= 0 || !this.L.g()) ? z : true) {
            d.g.m.s.H(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void e(java.lang.String str) {
        if (z()) {
            if (str != null) {
                throw new java.lang.IllegalStateException(str);
            }
            throw new java.lang.IllegalStateException(e.a.c.a.a.H(this, e.a.c.a.a.o("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.F > 0) {
            android.util.Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new java.lang.IllegalStateException(e.a.c.a.a.H(this, e.a.c.a.a.o(""))));
        }
    }

    public final void f() {
        L();
        setScrollState(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0127  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r10, int r11) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            return kVar.l();
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.H(this, e.a.c.a.a.o("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            return kVar.m(getContext(), attributeSet);
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.H(this, e.a.c.a.a.o("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            return kVar.n(layoutParams);
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.H(this, e.a.c.a.a.o("RecyclerView has no LayoutManager")));
    }

    public androidx.recyclerview.widget.RecyclerView.d getAdapter() {
        return null;
    }

    @Override // android.view.View
    public int getBaseline() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null) {
            return super.getBaseline();
        }
        if (kVar != null) {
            return -1;
        }
        throw null;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        androidx.recyclerview.widget.RecyclerView.f fVar = this.o0;
        return fVar == null ? super.getChildDrawingOrder(i2, i3) : fVar.a(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f147g;
    }

    public d.q.c.u getCompatAccessibilityDelegate() {
        return this.n0;
    }

    public androidx.recyclerview.widget.RecyclerView.g getEdgeEffectFactory() {
        return this.G;
    }

    public androidx.recyclerview.widget.RecyclerView.h getItemAnimator() {
        return this.L;
    }

    public int getItemDecorationCount() {
        return this.n.size();
    }

    public androidx.recyclerview.widget.RecyclerView.k getLayoutManager() {
        return this.l;
    }

    public int getMaxFlingVelocity() {
        return this.W;
    }

    public int getMinFlingVelocity() {
        return this.V;
    }

    public long getNanoTime() {
        if (C0) {
            return java.lang.System.nanoTime();
        }
        return 0L;
    }

    public androidx.recyclerview.widget.RecyclerView.m getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.c0;
    }

    public androidx.recyclerview.widget.RecyclerView.p getRecycledViewPool() {
        return this.b.d();
    }

    public int getScrollState() {
        return this.M;
    }

    public void h(int i2, int i3) {
        boolean zIsFinished;
        android.widget.EdgeEffect edgeEffect = this.H;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.H.onRelease();
            zIsFinished = this.H.isFinished();
        }
        android.widget.EdgeEffect edgeEffect2 = this.J;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.J.onRelease();
            zIsFinished |= this.J.isFinished();
        }
        android.widget.EdgeEffect edgeEffect3 = this.I;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.I.onRelease();
            zIsFinished |= this.I.isFinished();
        }
        android.widget.EdgeEffect edgeEffect4 = this.K;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.K.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        if (zIsFinished) {
            d.g.m.s.H(this);
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().g(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            r6 = this;
            boolean r0 = r6.t
            java.lang.String r1 = "RV FullInvalidate"
            if (r0 == 0) goto L90
            boolean r0 = r6.B
            if (r0 == 0) goto Lc
            goto L90
        Lc:
            d.q.c.a r0 = r6.f144d
            boolean r0 = r0.g()
            if (r0 != 0) goto L15
            return
        L15:
            d.q.c.a r0 = r6.f144d
            int r0 = r0.f2187g
            r0 = r0 & 4
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            if (r0 == 0) goto L7e
            d.q.c.a r0 = r6.f144d
            int r0 = r0.f2187g
            r0 = r0 & 11
            if (r0 == 0) goto L2e
            r0 = 1
            goto L2f
        L2e:
            r0 = 0
        L2f:
            if (r0 != 0) goto L7e
            java.lang.String r0 = "RV PartialInvalidate"
            d.g.i.b.a(r0)
            r6.P()
            r6.D()
            d.q.c.a r0 = r6.f144d
            r0.j()
            boolean r0 = r6.v
            if (r0 != 0) goto L77
            d.q.c.b r0 = r6.f145e
            int r0 = r0.c()
            r1 = 0
        L4c:
            if (r1 >= r0) goto L6c
            d.q.c.b r4 = r6.f145e
            android.view.View r4 = r4.b(r1)
            androidx.recyclerview.widget.RecyclerView$x r4 = u(r4)
            if (r4 == 0) goto L69
            boolean r5 = r4.r()
            if (r5 == 0) goto L61
            goto L69
        L61:
            boolean r4 = r4.l()
            if (r4 == 0) goto L69
            r2 = 1
            goto L6c
        L69:
            int r1 = r1 + 1
            goto L4c
        L6c:
            if (r2 == 0) goto L72
            r6.k()
            goto L77
        L72:
            d.q.c.a r0 = r6.f144d
            r0.b()
        L77:
            r6.R(r3)
            r6.E(r3)
            goto L8c
        L7e:
            d.q.c.a r0 = r6.f144d
            boolean r0 = r0.g()
            if (r0 == 0) goto L8f
            d.g.i.b.a(r1)
            r6.k()
        L8c:
            d.g.i.b.b()
        L8f:
            return
        L90:
            d.g.i.b.a(r1)
            r6.k()
            d.g.i.b.b()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.i():void");
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.q;
    }

    @Override // android.view.View, d.g.m.f
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f1996d;
    }

    public void j(int i2, int i3) {
        setMeasuredDimension(androidx.recyclerview.widget.RecyclerView.k.e(i2, getPaddingRight() + getPaddingLeft(), d.g.m.s.q(this)), androidx.recyclerview.widget.RecyclerView.k.e(i3, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void k() {
        android.util.Log.e("RecyclerView", "No adapter attached; skipping layout");
    }

    public boolean l(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().c(i2, i3, iArr, null, i4);
    }

    public boolean m(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().e(i2, i3, i4, i5, iArr, i6, null);
    }

    public void n() {
        int measuredWidth;
        int measuredHeight;
        if (this.K != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.G.a(this);
        this.K = edgeEffectA;
        if (this.f147g) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffectA.setSize(measuredWidth, measuredHeight);
    }

    public void o() {
        int measuredHeight;
        int measuredWidth;
        if (this.H != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.G.a(this);
        this.H = edgeEffectA;
        if (this.f147g) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffectA.setSize(measuredHeight, measuredWidth);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.D = 0;
        this.q = true;
        this.t = this.t && !isLayoutRequested();
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            kVar.h = true;
            kVar.F();
        }
        this.m0 = false;
        if (C0) {
            d.q.c.m mVar = d.q.c.m.f2215e.get();
            this.e0 = mVar;
            if (mVar == null) {
                this.e0 = new d.q.c.m();
                android.view.Display displayJ = d.g.m.s.j(this);
                float f2 = 60.0f;
                if (!isInEditMode() && displayJ != null) {
                    float refreshRate = displayJ.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                d.q.c.m mVar2 = this.e0;
                mVar2.f2217c = (long) (1.0E9f / f2);
                d.q.c.m.f2215e.set(mVar2);
            }
            this.e0.a.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        d.q.c.m mVar;
        super.onDetachedFromWindow();
        androidx.recyclerview.widget.RecyclerView.h hVar = this.L;
        if (hVar != null) {
            hVar.f();
        }
        S();
        this.q = false;
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
            kVar.h = false;
            kVar.H(this, qVar);
        }
        this.v0.clear();
        removeCallbacks(this.w0);
        if (this.f146f == null) {
            throw null;
        }
        while (d.q.c.x.a.f2237d.a() != null) {
        }
        if (!C0 || (mVar = this.e0) == null) {
            return;
        }
        mVar.a.remove(this);
        this.e0 = null;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        int size = this.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.n.get(i2) == null) {
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$k r0 = r5.l
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.w
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$k r0 = r5.l
            boolean r0 = r0.c()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$k r3 = r5.l
            boolean r3 = r3.b()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$k r3 = r5.l
            boolean r3 = r3.c()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$k r3 = r5.l
            boolean r3 = r3.b()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6a:
            float r2 = r5.a0
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.b0
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.M(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.w) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.p = null;
        }
        int size = this.o.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            androidx.recyclerview.widget.RecyclerView.n nVar = this.o.get(i2);
            if (nVar.a(this, motionEvent) && action != 3) {
                this.p = nVar;
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            f();
            return true;
        }
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null) {
            return false;
        }
        boolean zB = kVar.b();
        boolean zC = this.l.c();
        if (this.O == null) {
            this.O = android.view.VelocityTracker.obtain();
        }
        this.O.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.x) {
                this.x = false;
            }
            this.N = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.R = x2;
            this.P = x2;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.S = y;
            this.Q = y;
            if (this.M == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.t0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i3 = zB ? 1 : 0;
            if (zC) {
                i3 |= 2;
            }
            Q(i3, 0);
        } else if (actionMasked == 1) {
            this.O.clear();
            a(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.N);
            if (iFindPointerIndex < 0) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Error processing scroll; pointer index for id ");
                sbO.append(this.N);
                sbO.append(" not found. Did any MotionEvents get skipped?");
                android.util.Log.e("RecyclerView", sbO.toString());
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.M != 1) {
                int i4 = x3 - this.P;
                int i5 = y2 - this.Q;
                if (!zB || java.lang.Math.abs(i4) <= this.T) {
                    z2 = false;
                } else {
                    this.R = x3;
                    z2 = true;
                }
                if (zC && java.lang.Math.abs(i5) > this.T) {
                    this.S = y2;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            f();
        } else if (actionMasked == 5) {
            this.N = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.R = x4;
            this.P = x4;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.S = y3;
            this.Q = y3;
        } else if (actionMasked == 6) {
            F(motionEvent);
        }
        return this.M == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        d.g.i.b.a("RV OnLayout");
        k();
        d.g.i.b.b();
        this.t = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null) {
            j(i2, i3);
            return;
        }
        if (kVar.B()) {
            int mode = android.view.View.MeasureSpec.getMode(i2);
            int mode2 = android.view.View.MeasureSpec.getMode(i3);
            this.l.T(i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                return;
            } else {
                return;
            }
        }
        if (this.r) {
            this.l.T(i2, i3);
            return;
        }
        if (this.z) {
            P();
            D();
            H();
            E(true);
            androidx.recyclerview.widget.RecyclerView.u uVar = this.g0;
            if (uVar.k) {
                uVar.f173g = true;
            } else {
                this.f144d.c();
                this.g0.f173g = false;
            }
            this.z = false;
            R(false);
        } else if (this.g0.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        this.g0.f171e = 0;
        P();
        this.l.T(i2, i3);
        R(false);
        this.g0.f173g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, android.graphics.Rect rect) {
        if (z()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.os.Parcelable parcelable2;
        if (!(parcelable instanceof androidx.recyclerview.widget.RecyclerView.t)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.recyclerview.widget.RecyclerView.t tVar = (androidx.recyclerview.widget.RecyclerView.t) parcelable;
        this.f143c = tVar;
        super.onRestoreInstanceState(tVar.a);
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null || (parcelable2 = this.f143c.f168c) == null) {
            return;
        }
        kVar.W(parcelable2);
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.recyclerview.widget.RecyclerView.t tVar = new androidx.recyclerview.widget.RecyclerView.t(super.onSaveInstanceState());
        androidx.recyclerview.widget.RecyclerView.t tVar2 = this.f143c;
        if (tVar2 != null) {
            tVar.f168c = tVar2.f168c;
        } else {
            androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
            tVar.f168c = kVar != null ? kVar.X() : null;
        }
        return tVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void p() {
        int measuredHeight;
        int measuredWidth;
        if (this.J != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.G.a(this);
        this.J = edgeEffectA;
        if (this.f147g) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffectA.setSize(measuredHeight, measuredWidth);
    }

    public void q() {
        int measuredWidth;
        int measuredHeight;
        if (this.I != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.G.a(this);
        this.I = edgeEffectA;
        if (this.f147g) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffectA.setSize(measuredWidth, measuredHeight);
    }

    public java.lang.String r() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" ");
        sbO.append(super.toString());
        sbO.append(", adapter:");
        sbO.append((java.lang.Object) null);
        sbO.append(", layout:");
        sbO.append(this.l);
        sbO.append(", context:");
        sbO.append(getContext());
        return sbO.toString();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(android.view.View view, boolean z) {
        androidx.recyclerview.widget.RecyclerView.x xVarU = u(view);
        if (xVarU != null) {
            if (xVarU.k()) {
                xVarU.i &= -257;
            } else if (!xVarU.r()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(xVarU);
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(this, sb));
            }
        }
        view.clearAnimation();
        u(view);
        C();
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(android.view.View view, android.view.View view2) {
        if (!this.l.V(this, view, view2) && view2 != null) {
            K(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z) {
        return this.l.f0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.o.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.o.get(i2).c(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.u != 0 || this.w) {
            this.v = true;
        } else {
            super.requestLayout();
        }
    }

    public android.view.View s(android.view.View view) {
        java.lang.Object parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof android.view.View)) {
                break;
            }
            view = (android.view.View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar == null) {
            android.util.Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.w) {
            return;
        }
        boolean zB = kVar.b();
        boolean zC = this.l.c();
        if (zB || zC) {
            if (!zB) {
                i2 = 0;
            }
            if (!zC) {
                i3 = 0;
            }
            M(i2, i3, null);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        android.util.Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        if (z()) {
            int contentChangeTypes = (accessibilityEvent == null || android.os.Build.VERSION.SDK_INT < 19) ? 0 : accessibilityEvent.getContentChangeTypes();
            this.y |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            i = 1;
        }
        if (i != 0) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(d.q.c.u uVar) {
        this.n0 = uVar;
        d.g.m.s.L(this, uVar);
    }

    public void setAdapter(androidx.recyclerview.widget.RecyclerView.d dVar) {
        setLayoutFrozen(false);
        J();
        d.q.c.a aVar = this.f144d;
        aVar.l(aVar.b);
        aVar.l(aVar.f2183c);
        aVar.f2187g = 0;
        this.k = dVar;
        if (dVar != null) {
            throw null;
        }
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            kVar.D();
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
        qVar.b();
        androidx.recyclerview.widget.RecyclerView.p pVarD = qVar.d();
        if (pVarD == null) {
            throw null;
        }
        if (pVarD.b == 0) {
            for (int i2 = 0; i2 < pVarD.a.size(); i2++) {
                pVarD.a.valueAt(i2).a.clear();
            }
        }
        this.g0.f172f = true;
        this.C |= false;
        this.B = true;
        int iF = this.f145e.f();
        for (int i3 = 0; i3 < iF; i3++) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = u(this.f145e.e(i3));
            if (xVarU != null && !xVarU.r()) {
                xVarU.b(6);
            }
        }
        A();
        androidx.recyclerview.widget.RecyclerView.q qVar2 = this.b;
        int size = qVar2.f163c.size();
        for (int i4 = 0; i4 < size; i4++) {
            androidx.recyclerview.widget.RecyclerView.x xVar = qVar2.f163c.get(i4);
            if (xVar != null) {
                xVar.b(6);
                xVar.a(null);
            }
        }
        qVar2.e();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(androidx.recyclerview.widget.RecyclerView.f fVar) {
        if (fVar == this.o0) {
            return;
        }
        this.o0 = fVar;
        setChildrenDrawingOrderEnabled(fVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f147g) {
            y();
        }
        this.f147g = z;
        super.setClipToPadding(z);
        if (this.t) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(androidx.recyclerview.widget.RecyclerView.g gVar) {
        if (gVar == null) {
            throw null;
        }
        this.G = gVar;
        y();
    }

    public void setHasFixedSize(boolean z) {
        this.r = z;
    }

    public void setItemAnimator(androidx.recyclerview.widget.RecyclerView.h hVar) {
        androidx.recyclerview.widget.RecyclerView.h hVar2 = this.L;
        if (hVar2 != null) {
            hVar2.f();
            this.L.a = null;
        }
        this.L = hVar;
        if (hVar != null) {
            hVar.a = this.l0;
        }
    }

    public void setItemViewCacheSize(int i2) {
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
        qVar.f165e = i2;
        qVar.l();
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.w) {
            e("Do not setLayoutFrozen in layout or scroll");
            if (!z) {
                this.w = false;
                if (this.v) {
                    androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
                }
                this.v = false;
                return;
            }
            long jUptimeMillis = android.os.SystemClock.uptimeMillis();
            onTouchEvent(android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.w = true;
            this.x = true;
            S();
        }
    }

    public void setLayoutManager(androidx.recyclerview.widget.RecyclerView.k kVar) {
        if (kVar == this.l) {
            return;
        }
        S();
        if (this.l != null) {
            androidx.recyclerview.widget.RecyclerView.h hVar = this.L;
            if (hVar != null) {
                hVar.f();
            }
            this.l.b0(this.b);
            this.l.c0(this.b);
            this.b.b();
            if (this.q) {
                androidx.recyclerview.widget.RecyclerView.k kVar2 = this.l;
                androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
                kVar2.h = false;
                kVar2.H(this, qVar);
            }
            this.l.h0(null);
            this.l = null;
        } else {
            this.b.b();
        }
        d.q.c.b bVar = this.f145e;
        d.q.c.b.a aVar = bVar.b;
        aVar.a = 0L;
        d.q.c.b.a aVar2 = aVar.b;
        if (aVar2 != null) {
            aVar2.f();
        }
        int size = bVar.f2190c.size();
        while (true) {
            size--;
            if (size < 0) {
                d.q.c.s sVar = (d.q.c.s) bVar.a;
                int iB = sVar.b();
                for (int i2 = 0; i2 < iB; i2++) {
                    android.view.View viewA = sVar.a(i2);
                    androidx.recyclerview.widget.RecyclerView recyclerView = sVar.a;
                    if (recyclerView == null) {
                        throw null;
                    }
                    u(viewA);
                    recyclerView.C();
                    viewA.clearAnimation();
                }
                sVar.a.removeAllViews();
                this.l = kVar;
                if (kVar != null) {
                    if (kVar.b != null) {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("LayoutManager ");
                        sb.append(kVar);
                        sb.append(" is already attached to a RecyclerView:");
                        throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(kVar.b, sb));
                    }
                    kVar.h0(this);
                    if (this.q) {
                        androidx.recyclerview.widget.RecyclerView.k kVar3 = this.l;
                        kVar3.h = true;
                        kVar3.F();
                    }
                }
                this.b.l();
                requestLayout();
                return;
            }
            d.q.c.b.InterfaceC0057b interfaceC0057b = bVar.a;
            android.view.View view = bVar.f2190c.get(size);
            d.q.c.s sVar2 = (d.q.c.s) interfaceC0057b;
            if (sVar2 == null) {
                throw null;
            }
            androidx.recyclerview.widget.RecyclerView.x xVarU = u(view);
            if (xVarU != null) {
                sVar2.a.N(xVarU, xVarU.o);
                xVarU.o = 0;
            }
            bVar.f2190c.remove(size);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        d.g.m.g scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f1996d) {
            d.g.m.s.W(scrollingChildHelper.f1995c);
        }
        scrollingChildHelper.f1996d = z;
    }

    public void setOnFlingListener(androidx.recyclerview.widget.RecyclerView.m mVar) {
        this.U = mVar;
    }

    @java.lang.Deprecated
    public void setOnScrollListener(androidx.recyclerview.widget.RecyclerView.o oVar) {
        this.h0 = oVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.c0 = z;
    }

    public void setRecycledViewPool(androidx.recyclerview.widget.RecyclerView.p pVar) {
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b;
        if (qVar.f167g != null) {
            r1.b--;
        }
        qVar.f167g = pVar;
        if (pVar == null || androidx.recyclerview.widget.RecyclerView.this.getAdapter() == null) {
            return;
        }
        qVar.f167g.b++;
    }

    public void setRecyclerListener(androidx.recyclerview.widget.RecyclerView.r rVar) {
        this.m = rVar;
    }

    public void setScrollState(int i2) {
        if (i2 == this.M) {
            return;
        }
        this.M = i2;
        if (i2 != 2) {
            T();
        }
        androidx.recyclerview.widget.RecyclerView.k kVar = this.l;
        if (kVar != null) {
            kVar.Y(i2);
        }
        G();
        androidx.recyclerview.widget.RecyclerView.o oVar = this.h0;
        java.util.List<androidx.recyclerview.widget.RecyclerView.o> list = this.i0;
        if (list != null) {
            int size = list.size();
            do {
                size--;
                if (size < 0) {
                    return;
                }
            } while (this.i0.get(size) != null);
            throw null;
        }
    }

    public void setScrollingTouchSlop(int i2) {
        int scaledTouchSlop;
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        if (i2 == 0) {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else if (i2 != 1) {
            android.util.Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            scaledTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
        this.T = scaledTouchSlop;
    }

    public void setViewCacheExtension(androidx.recyclerview.widget.RecyclerView.v vVar) {
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().h(i2, 0);
    }

    @Override // android.view.View, d.g.m.f
    public void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    public int t(androidx.recyclerview.widget.RecyclerView.x xVar) {
        if (!xVar.f(524) && xVar.g()) {
            d.q.c.a aVar = this.f144d;
            int i2 = xVar.f179c;
            int size = aVar.b.size();
            for (int i3 = 0; i3 < size; i3++) {
                d.q.c.a.b bVar = aVar.b.get(i3);
                int i4 = bVar.a;
                if (i4 != 1) {
                    if (i4 == 2) {
                        int i5 = bVar.b;
                        if (i5 <= i2) {
                            int i6 = bVar.f2189d;
                            if (i5 + i6 <= i2) {
                                i2 -= i6;
                            }
                        } else {
                            continue;
                        }
                    } else if (i4 == 8) {
                        int i7 = bVar.b;
                        if (i7 == i2) {
                            i2 = bVar.f2189d;
                        } else {
                            if (i7 < i2) {
                                i2--;
                            }
                            if (bVar.f2189d <= i2) {
                                i2++;
                            }
                        }
                    }
                } else if (bVar.b <= i2) {
                    i2 += bVar.f2189d;
                }
            }
            return i2;
        }
        return -1;
    }

    public boolean w(int i2) {
        return getScrollingChildHelper().f(i2) != null;
    }

    public boolean x() {
        return !this.t || this.B || this.f144d.g();
    }

    public void y() {
        this.K = null;
        this.I = null;
        this.J = null;
        this.H = null;
    }

    public boolean z() {
        return this.D > 0;
    }
}
