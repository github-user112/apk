package d.b.m.a;

/* loaded from: classes.dex */
public class b extends android.graphics.drawable.Drawable implements android.graphics.drawable.Drawable.Callback {
    public d.b.m.a.b.c a;
    public android.graphics.Rect b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1664c;

    /* renamed from: d, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1665d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1667f;
    public boolean h;
    public java.lang.Runnable i;
    public long j;
    public long k;
    public d.b.m.a.b.C0035b l;

    /* renamed from: e, reason: collision with root package name */
    public int f1666e = 255;

    /* renamed from: g, reason: collision with root package name */
    public int f1668g = -1;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.m.a.b.this.a(true);
            d.b.m.a.b.this.invalidateSelf();
        }
    }

    /* renamed from: d.b.m.a.b$b, reason: collision with other inner class name */
    public static class C0035b implements android.graphics.drawable.Drawable.Callback {
        public android.graphics.drawable.Drawable.Callback a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable, long j) {
            android.graphics.drawable.Drawable.Callback callback = this.a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable) {
            android.graphics.drawable.Drawable.Callback callback = this.a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    public static abstract class c extends android.graphics.drawable.Drawable.ConstantState {
        public int A;
        public int B;
        public boolean C;
        public android.graphics.ColorFilter D;
        public boolean E;
        public android.content.res.ColorStateList F;
        public android.graphics.PorterDuff.Mode G;
        public boolean H;
        public boolean I;
        public final d.b.m.a.b a;
        public android.content.res.Resources b;

        /* renamed from: c, reason: collision with root package name */
        public int f1669c;

        /* renamed from: d, reason: collision with root package name */
        public int f1670d;

        /* renamed from: e, reason: collision with root package name */
        public int f1671e;

        /* renamed from: f, reason: collision with root package name */
        public android.util.SparseArray<android.graphics.drawable.Drawable.ConstantState> f1672f;

        /* renamed from: g, reason: collision with root package name */
        public android.graphics.drawable.Drawable[] f1673g;
        public int h;
        public boolean i;
        public boolean j;
        public android.graphics.Rect k;
        public boolean l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;
        public boolean r;
        public int s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x;
        public boolean y;
        public int z;

        public c(d.b.m.a.b.c cVar, d.b.m.a.b bVar, android.content.res.Resources resources) {
            this.f1669c = 160;
            this.i = false;
            this.l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.a = bVar;
            this.b = resources != null ? resources : cVar != null ? cVar.b : null;
            int iD = d.b.m.a.b.d(resources, cVar != null ? cVar.f1669c : 0);
            this.f1669c = iD;
            if (cVar == null) {
                this.f1673g = new android.graphics.drawable.Drawable[10];
                this.h = 0;
                return;
            }
            this.f1670d = cVar.f1670d;
            this.f1671e = cVar.f1671e;
            this.v = true;
            this.w = true;
            this.i = cVar.i;
            this.l = cVar.l;
            this.x = cVar.x;
            this.y = cVar.y;
            this.z = cVar.z;
            this.A = cVar.A;
            this.B = cVar.B;
            this.C = cVar.C;
            this.D = cVar.D;
            this.E = cVar.E;
            this.F = cVar.F;
            this.G = cVar.G;
            this.H = cVar.H;
            this.I = cVar.I;
            if (cVar.f1669c == iD) {
                if (cVar.j) {
                    this.k = new android.graphics.Rect(cVar.k);
                    this.j = true;
                }
                if (cVar.m) {
                    this.n = cVar.n;
                    this.o = cVar.o;
                    this.p = cVar.p;
                    this.q = cVar.q;
                    this.m = true;
                }
            }
            if (cVar.r) {
                this.s = cVar.s;
                this.r = true;
            }
            if (cVar.t) {
                this.u = cVar.u;
                this.t = true;
            }
            android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
            this.f1673g = new android.graphics.drawable.Drawable[drawableArr.length];
            this.h = cVar.h;
            android.util.SparseArray<android.graphics.drawable.Drawable.ConstantState> sparseArray = cVar.f1672f;
            this.f1672f = sparseArray != null ? sparseArray.clone() : new android.util.SparseArray<>(this.h);
            int i = this.h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    android.graphics.drawable.Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f1672f.put(i2, constantState);
                    } else {
                        this.f1673g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        public final int a(android.graphics.drawable.Drawable drawable) {
            int i = this.h;
            if (i >= this.f1673g.length) {
                int i2 = i + 10;
                d.b.m.a.d.a aVar = (d.b.m.a.d.a) this;
                android.graphics.drawable.Drawable[] drawableArr = new android.graphics.drawable.Drawable[i2];
                java.lang.System.arraycopy(aVar.f1673g, 0, drawableArr, 0, i);
                aVar.f1673g = drawableArr;
                int[][] iArr = new int[i2][];
                java.lang.System.arraycopy(aVar.J, 0, iArr, 0, i);
                aVar.J = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.a);
            this.f1673g[i] = drawable;
            this.h++;
            this.f1671e = drawable.getChangingConfigurations() | this.f1671e;
            this.r = false;
            this.t = false;
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i;
        }

        public void b() {
            this.m = true;
            c();
            int i = this.h;
            android.graphics.drawable.Drawable[] drawableArr = this.f1673g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                android.graphics.drawable.Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final void c() {
            android.util.SparseArray<android.graphics.drawable.Drawable.ConstantState> sparseArray = this.f1672f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int iKeyAt = this.f1672f.keyAt(i);
                    android.graphics.drawable.Drawable.ConstantState constantStateValueAt = this.f1672f.valueAt(i);
                    android.graphics.drawable.Drawable[] drawableArr = this.f1673g;
                    android.graphics.drawable.Drawable drawableNewDrawable = constantStateValueAt.newDrawable(this.b);
                    if (android.os.Build.VERSION.SDK_INT >= 23) {
                        drawableNewDrawable.setLayoutDirection(this.z);
                    }
                    android.graphics.drawable.Drawable drawableMutate = drawableNewDrawable.mutate();
                    drawableMutate.setCallback(this.a);
                    drawableArr[iKeyAt] = drawableMutate;
                }
                this.f1672f = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.h;
            android.graphics.drawable.Drawable[] drawableArr = this.f1673g;
            for (int i2 = 0; i2 < i; i2++) {
                android.graphics.drawable.Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    android.graphics.drawable.Drawable.ConstantState constantState = this.f1672f.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final android.graphics.drawable.Drawable d(int i) {
            int iIndexOfKey;
            android.graphics.drawable.Drawable drawable = this.f1673g[i];
            if (drawable != null) {
                return drawable;
            }
            android.util.SparseArray<android.graphics.drawable.Drawable.ConstantState> sparseArray = this.f1672f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            android.graphics.drawable.Drawable drawableNewDrawable = this.f1672f.valueAt(iIndexOfKey).newDrawable(this.b);
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                drawableNewDrawable.setLayoutDirection(this.z);
            }
            android.graphics.drawable.Drawable drawableMutate = drawableNewDrawable.mutate();
            drawableMutate.setCallback(this.a);
            this.f1673g[i] = drawableMutate;
            this.f1672f.removeAt(iIndexOfKey);
            if (this.f1672f.size() == 0) {
                this.f1672f = null;
            }
            return drawableMutate;
        }

        public abstract void e();

        public final void f(android.content.res.Resources resources) {
            if (resources != null) {
                this.b = resources;
                int iD = d.b.m.a.b.d(resources, this.f1669c);
                int i = this.f1669c;
                this.f1669c = iD;
                if (i != iD) {
                    this.m = false;
                    this.j = false;
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1670d | this.f1671e;
        }
    }

    public static int d(android.content.res.Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    public void a(boolean z) {
        boolean z2;
        boolean z3 = true;
        this.f1667f = true;
        long jUptimeMillis = android.os.SystemClock.uptimeMillis();
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            long j = this.j;
            if (j == 0) {
                z2 = false;
            } else if (j <= jUptimeMillis) {
                drawable.setAlpha(this.f1666e);
                this.j = 0L;
                z2 = false;
            } else {
                drawable.setAlpha(((255 - (((int) ((j - jUptimeMillis) * 255)) / this.a.A)) * this.f1666e) / 255);
                z2 = true;
            }
        } else {
            this.j = 0L;
            z2 = false;
        }
        android.graphics.drawable.Drawable drawable2 = this.f1665d;
        if (drawable2 != null) {
            long j2 = this.k;
            if (j2 == 0) {
                z3 = z2;
            } else if (j2 <= jUptimeMillis) {
                drawable2.setVisible(false, false);
                this.f1665d = null;
                this.k = 0L;
                z3 = z2;
            } else {
                drawable2.setAlpha(((((int) ((j2 - jUptimeMillis) * 255)) / this.a.B) * this.f1666e) / 255);
            }
        } else {
            this.k = 0L;
            z3 = z2;
        }
        if (z && z3) {
            scheduleSelf(this.i, jUptimeMillis + 16);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(android.content.res.Resources.Theme theme) {
        d.b.m.a.b.c cVar = this.a;
        if (cVar == null) {
            throw null;
        }
        if (theme != null) {
            cVar.c();
            int i = cVar.h;
            android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    cVar.f1671e |= drawableArr[i2].getChangingConfigurations();
                }
            }
            cVar.f(theme.getResources());
        }
    }

    public d.b.m.a.b.c b() {
        throw null;
    }

    public final void c(android.graphics.drawable.Drawable drawable) {
        if (this.l == null) {
            this.l = new d.b.m.a.b.C0035b();
        }
        d.b.m.a.b.C0035b c0035b = this.l;
        c0035b.a = drawable.getCallback();
        drawable.setCallback(c0035b);
        try {
            if (this.a.A <= 0 && this.f1667f) {
                drawable.setAlpha(this.f1666e);
            }
            if (this.a.E) {
                drawable.setColorFilter(this.a.D);
            } else {
                if (this.a.H) {
                    d.b.k.r.t0(drawable, this.a.F);
                }
                if (this.a.I) {
                    d.b.k.r.u0(drawable, this.a.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.a.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (android.os.Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.a.C);
            }
            android.graphics.Rect rect = this.b;
            if (android.os.Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            d.b.m.a.b.C0035b c0035b2 = this.l;
            android.graphics.drawable.Drawable.Callback callback = c0035b2.a;
            c0035b2.a = null;
            drawable.setCallback(callback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        android.graphics.drawable.Drawable drawable2 = this.f1665d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e(int r10) {
        /*
            r9 = this;
            int r0 = r9.f1668g
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            d.b.m.a.b$c r0 = r9.a
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f1665d
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f1664c
            if (r0 == 0) goto L29
            r9.f1665d = r0
            d.b.m.a.b$c r0 = r9.a
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.k = r0
            goto L35
        L29:
            r9.f1665d = r4
            r9.k = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f1664c
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            d.b.m.a.b$c r0 = r9.a
            int r1 = r0.h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.d(r10)
            r9.f1664c = r0
            r9.f1668g = r10
            if (r0 == 0) goto L5a
            d.b.m.a.b$c r10 = r9.a
            int r10 = r10.A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.j = r2
        L51:
            r9.c(r0)
            goto L5a
        L55:
            r9.f1664c = r4
            r10 = -1
            r9.f1668g = r10
        L5a:
            long r0 = r9.j
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.k
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.i
            if (r0 != 0) goto L73
            d.b.m.a.b$a r0 = new d.b.m.a.b$a
            r0.<init>()
            r9.i = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.m.a.b.e(int):boolean");
    }

    public void f(d.b.m.a.b.c cVar) {
        this.a = cVar;
        int i = this.f1668g;
        if (i >= 0) {
            android.graphics.drawable.Drawable drawableD = cVar.d(i);
            this.f1664c = drawableD;
            if (drawableD != null) {
                c(drawableD);
            }
        }
        this.f1665d = null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1666e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final android.graphics.drawable.Drawable.ConstantState getConstantState() {
        boolean z;
        d.b.m.a.b.c cVar = this.a;
        synchronized (cVar) {
            z = false;
            if (cVar.v) {
                z = cVar.w;
            } else {
                cVar.c();
                cVar.v = true;
                int i = cVar.h;
                android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        cVar.w = false;
                    }
                }
                cVar.w = true;
                z = true;
            }
            break;
        }
        if (!z) {
            return null;
        }
        this.a.f1670d = getChangingConfigurations();
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable getCurrent() {
        return this.f1664c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(android.graphics.Rect rect) {
        android.graphics.Rect rect2 = this.b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.o;
        }
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.n;
        }
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.q;
        }
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.p;
        }
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        d.b.m.a.b.c cVar = this.a;
        if (cVar.r) {
            return cVar.s;
        }
        cVar.c();
        int i = cVar.h;
        android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
        int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i2 = 1; i2 < i; i2++) {
            opacity = android.graphics.drawable.Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
        }
        cVar.s = opacity;
        cVar.r = true;
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(android.graphics.Outline outline) {
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(android.graphics.Rect rect) {
        boolean padding;
        d.b.m.a.b.c cVar = this.a;
        android.graphics.Rect rect2 = null;
        if (!cVar.i) {
            if (cVar.k != null || cVar.j) {
                rect2 = cVar.k;
            } else {
                cVar.c();
                android.graphics.Rect rect3 = new android.graphics.Rect();
                int i = cVar.h;
                android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect3)) {
                        if (rect2 == null) {
                            rect2 = new android.graphics.Rect(0, 0, 0, 0);
                        }
                        int i3 = rect3.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect3.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect3.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect3.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                cVar.j = true;
                cVar.k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            padding = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            android.graphics.drawable.Drawable drawable = this.f1664c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.a.C && d.b.k.r.B(this) == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
        d.b.m.a.b.c cVar = this.a;
        if (cVar != null) {
            cVar.r = false;
            cVar.t = false;
        }
        if (drawable != this.f1664c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.a.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        android.graphics.drawable.Drawable drawable = this.f1665d;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f1665d = null;
            z = true;
        } else {
            z = false;
        }
        android.graphics.drawable.Drawable drawable2 = this.f1664c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f1667f) {
                this.f1664c.setAlpha(this.f1666e);
            }
        }
        if (this.k != 0) {
            this.k = 0L;
            z = true;
        }
        if (this.j != 0) {
            this.j = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        if (!this.h && super.mutate() == this) {
            d.b.m.a.b.c cVarB = b();
            cVarB.e();
            f(cVarB);
            this.h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        android.graphics.drawable.Drawable drawable = this.f1665d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        android.graphics.drawable.Drawable drawable2 = this.f1664c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        d.b.m.a.b.c cVar = this.a;
        int i2 = this.f1668g;
        int i3 = cVar.h;
        android.graphics.drawable.Drawable[] drawableArr = cVar.f1673g;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            if (drawableArr[i4] != null) {
                boolean layoutDirection = android.os.Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                if (i4 == i2) {
                    z = layoutDirection;
                }
            }
        }
        cVar.z = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        android.graphics.drawable.Drawable drawable = this.f1665d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        android.graphics.drawable.Drawable drawable2 = this.f1664c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        android.graphics.drawable.Drawable drawable = this.f1665d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        android.graphics.drawable.Drawable drawable2 = this.f1664c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable, long j) {
        if (drawable != this.f1664c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f1667f && this.f1666e == i) {
            return;
        }
        this.f1667f = true;
        this.f1666e = i;
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            if (this.j == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.C != z) {
            cVar.C = z;
            android.graphics.drawable.Drawable drawable = this.f1664c;
            if (drawable != null) {
                d.b.k.r.h0(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        d.b.m.a.b.c cVar = this.a;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            android.graphics.drawable.Drawable drawable = this.f1664c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        d.b.m.a.b.c cVar = this.a;
        if (cVar.x != z) {
            cVar.x = z;
            android.graphics.drawable.Drawable drawable = this.f1664c;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            d.b.k.r.l0(drawable, f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        android.graphics.Rect rect = this.b;
        if (rect == null) {
            this.b = new android.graphics.Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        android.graphics.drawable.Drawable drawable = this.f1664c;
        if (drawable != null) {
            d.b.k.r.m0(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        d.b.m.a.b.c cVar = this.a;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            d.b.k.r.t0(this.f1664c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.m.a.b.c cVar = this.a;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            d.b.k.r.u0(this.f1664c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        android.graphics.drawable.Drawable drawable = this.f1665d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        android.graphics.drawable.Drawable drawable2 = this.f1664c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable) {
        if (drawable != this.f1664c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
