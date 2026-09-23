package d.g.n;

/* loaded from: classes.dex */
public abstract class a implements android.view.View.OnTouchListener {
    public static final int q = android.view.ViewConfiguration.getTapTimeout();

    /* renamed from: c, reason: collision with root package name */
    public final android.view.View f2020c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.Runnable f2021d;

    /* renamed from: g, reason: collision with root package name */
    public int f2024g;
    public int h;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public final d.g.n.a.C0049a a = new d.g.n.a.C0049a();
    public final android.view.animation.Interpolator b = new android.view.animation.AccelerateInterpolator();

    /* renamed from: e, reason: collision with root package name */
    public float[] f2022e = {0.0f, 0.0f};

    /* renamed from: f, reason: collision with root package name */
    public float[] f2023f = {Float.MAX_VALUE, Float.MAX_VALUE};
    public float[] i = {0.0f, 0.0f};
    public float[] j = {0.0f, 0.0f};
    public float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: d.g.n.a$a, reason: collision with other inner class name */
    public static class C0049a {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public float f2025c;

        /* renamed from: d, reason: collision with root package name */
        public float f2026d;
        public float j;
        public int k;

        /* renamed from: e, reason: collision with root package name */
        public long f2027e = Long.MIN_VALUE;
        public long i = -1;

        /* renamed from: f, reason: collision with root package name */
        public long f2028f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f2029g = 0;
        public int h = 0;

        public final float a(long j) {
            if (j < this.f2027e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return d.g.n.a.b((j - this.f2027e) / this.a, 0.0f, 1.0f) * 0.5f;
            }
            long j3 = j - j2;
            float f2 = this.j;
            return (d.g.n.a.b(j3 / this.k, 0.0f, 1.0f) * f2) + (1.0f - f2);
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            android.view.View childAt;
            d.g.n.a aVar = d.g.n.a.this;
            if (aVar.o) {
                if (aVar.m) {
                    aVar.m = false;
                    d.g.n.a.C0049a c0049a = aVar.a;
                    if (c0049a == null) {
                        throw null;
                    }
                    long jCurrentAnimationTimeMillis = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
                    c0049a.f2027e = jCurrentAnimationTimeMillis;
                    c0049a.i = -1L;
                    c0049a.f2028f = jCurrentAnimationTimeMillis;
                    c0049a.j = 0.5f;
                    c0049a.f2029g = 0;
                    c0049a.h = 0;
                }
                d.g.n.a.C0049a c0049a2 = d.g.n.a.this.a;
                if ((c0049a2.i > 0 && android.view.animation.AnimationUtils.currentAnimationTimeMillis() > c0049a2.i + ((long) c0049a2.k)) || !d.g.n.a.this.e()) {
                    d.g.n.a.this.o = false;
                    return;
                }
                d.g.n.a aVar2 = d.g.n.a.this;
                if (aVar2.n) {
                    aVar2.n = false;
                    if (aVar2 == null) {
                        throw null;
                    }
                    long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                    android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    aVar2.f2020c.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (c0049a2.f2028f == 0) {
                    throw new java.lang.RuntimeException("Cannot compute scroll delta before calling start()");
                }
                long jCurrentAnimationTimeMillis2 = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
                float fA = c0049a2.a(jCurrentAnimationTimeMillis2);
                long j = jCurrentAnimationTimeMillis2 - c0049a2.f2028f;
                c0049a2.f2028f = jCurrentAnimationTimeMillis2;
                float f2 = j * ((fA * 4.0f) + ((-4.0f) * fA * fA));
                c0049a2.f2029g = (int) (c0049a2.f2025c * f2);
                int i = (int) (f2 * c0049a2.f2026d);
                c0049a2.h = i;
                android.widget.ListView listView = ((d.g.n.c) d.g.n.a.this).r;
                if (android.os.Build.VERSION.SDK_INT >= 19) {
                    listView.scrollListBy(i);
                } else {
                    int firstVisiblePosition = listView.getFirstVisiblePosition();
                    if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
                        listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
                    }
                }
                d.g.m.s.I(d.g.n.a.this.f2020c, this);
            }
        }
    }

    public a(android.view.View view) {
        this.f2020c = view;
        float f2 = android.content.res.Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.k;
        float f3 = ((int) ((1575.0f * f2) + 0.5f)) / 1000.0f;
        fArr[0] = f3;
        fArr[1] = f3;
        float[] fArr2 = this.j;
        float f4 = ((int) ((f2 * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f4;
        fArr2[1] = f4;
        this.f2024g = 1;
        float[] fArr3 = this.f2023f;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f2022e;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.i;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.h = q;
        d.g.n.a.C0049a c0049a = this.a;
        c0049a.a = 500;
        c0049a.b = 500;
    }

    public static float b(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.f2022e
            r0 = r0[r4]
            float[] r1 = r3.f2023f
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.c(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L26
            android.view.animation.Interpolator r6 = r3.b
            float r5 = -r5
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L30
        L26:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L39
            android.view.animation.Interpolator r6 = r3.b
            float r5 = r6.getInterpolation(r5)
        L30:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = b(r5, r6, r0)
            goto L3a
        L39:
            r5 = 0
        L3a:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L3f
            return r2
        L3f:
            float[] r6 = r3.i
            r6 = r6[r4]
            float[] r0 = r3.j
            r0 = r0[r4]
            float[] r1 = r3.k
            r4 = r1[r4]
            float r6 = r6 * r7
            int r7 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r7 <= 0) goto L58
            float r5 = r5 * r6
            float r4 = b(r5, r0, r4)
            return r4
        L58:
            float r5 = -r5
            float r5 = r5 * r6
            float r4 = b(r5, r0, r4)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.n.a.a(int, float, float, float):float");
    }

    public final float c(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i = this.f2024g;
        if (i == 0 || i == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                if (this.o && this.f2024g == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.m) {
            this.o = false;
            return;
        }
        d.g.n.a.C0049a c0049a = this.a;
        if (c0049a == null) {
            throw null;
        }
        long jCurrentAnimationTimeMillis = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (jCurrentAnimationTimeMillis - c0049a.f2027e);
        int i3 = c0049a.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        c0049a.k = i;
        c0049a.j = c0049a.a(jCurrentAnimationTimeMillis);
        c0049a.i = jCurrentAnimationTimeMillis;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e() {
        /*
            r9 = this;
            d.g.n.a$a r0 = r9.a
            float r1 = r0.f2026d
            float r2 = java.lang.Math.abs(r1)
            float r1 = r1 / r2
            int r1 = (int) r1
            float r0 = r0.f2025c
            float r2 = java.lang.Math.abs(r0)
            float r0 = r0 / r2
            int r0 = (int) r0
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L53
            r4 = r9
            d.g.n.c r4 = (d.g.n.c) r4
            android.widget.ListView r4 = r4.r
            int r5 = r4.getCount()
            if (r5 != 0) goto L23
        L21:
            r1 = 0
            goto L51
        L23:
            int r6 = r4.getChildCount()
            int r7 = r4.getFirstVisiblePosition()
            int r8 = r7 + r6
            if (r1 <= 0) goto L41
            if (r8 < r5) goto L50
            int r6 = r6 - r2
            android.view.View r1 = r4.getChildAt(r6)
            int r1 = r1.getBottom()
            int r4 = r4.getHeight()
            if (r1 > r4) goto L50
            goto L21
        L41:
            if (r1 >= 0) goto L21
            if (r7 > 0) goto L50
            android.view.View r1 = r4.getChildAt(r3)
            int r1 = r1.getTop()
            if (r1 < 0) goto L50
            goto L21
        L50:
            r1 = 1
        L51:
            if (r1 != 0) goto L54
        L53:
            r2 = 0
        L54:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.n.a.e():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.p
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L7d
        L16:
            r5.d()
            goto L7d
        L1a:
            r5.n = r2
            r5.l = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f2020c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f2020c
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            d.g.n.a$a r7 = r5.a
            r7.f2025c = r0
            r7.f2026d = r6
            boolean r6 = r5.o
            if (r6 != 0) goto L7d
            boolean r6 = r5.e()
            if (r6 == 0) goto L7d
            java.lang.Runnable r6 = r5.f2021d
            if (r6 != 0) goto L61
            d.g.n.a$b r6 = new d.g.n.a$b
            r6.<init>()
            r5.f2021d = r6
        L61:
            r5.o = r2
            r5.m = r2
            boolean r6 = r5.l
            if (r6 != 0) goto L76
            int r6 = r5.h
            if (r6 <= 0) goto L76
            android.view.View r7 = r5.f2020c
            java.lang.Runnable r0 = r5.f2021d
            long r3 = (long) r6
            d.g.m.s.J(r7, r0, r3)
            goto L7b
        L76:
            java.lang.Runnable r6 = r5.f2021d
            r6.run()
        L7b:
            r5.l = r2
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.n.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
