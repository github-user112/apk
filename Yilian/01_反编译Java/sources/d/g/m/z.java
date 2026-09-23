package d.g.m;

/* loaded from: classes.dex */
public class z {
    public final d.g.m.z.l a;

    public static class a {
        public static java.lang.reflect.Field a;
        public static java.lang.reflect.Field b;

        /* renamed from: c, reason: collision with root package name */
        public static java.lang.reflect.Field f2008c;

        /* renamed from: d, reason: collision with root package name */
        public static boolean f2009d;

        static {
            try {
                java.lang.reflect.Field declaredField = android.view.View.class.getDeclaredField("mAttachInfo");
                a = declaredField;
                declaredField.setAccessible(true);
                java.lang.Class<?> cls = java.lang.Class.forName("android.view.View$AttachInfo");
                java.lang.reflect.Field declaredField2 = cls.getDeclaredField("mStableInsets");
                b = declaredField2;
                declaredField2.setAccessible(true);
                java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f2008c = declaredField3;
                declaredField3.setAccessible(true);
                f2009d = true;
            } catch (java.lang.ReflectiveOperationException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to get visible insets from AttachInfo ");
                sbO.append(e2.getMessage());
                android.util.Log.w("WindowInsetsCompat", sbO.toString(), e2);
            }
        }
    }

    public static final class b {
        public final d.g.m.z.f a;

        public b() {
            int i = android.os.Build.VERSION.SDK_INT;
            this.a = i >= 30 ? new d.g.m.z.e() : i >= 29 ? new d.g.m.z.d() : i >= 20 ? new d.g.m.z.c() : new d.g.m.z.f();
        }

        public d.g.m.z a() {
            return this.a.a();
        }
    }

    public static class c extends d.g.m.z.f {

        /* renamed from: d, reason: collision with root package name */
        public static java.lang.reflect.Field f2010d = null;

        /* renamed from: e, reason: collision with root package name */
        public static boolean f2011e = false;

        /* renamed from: f, reason: collision with root package name */
        public static java.lang.reflect.Constructor<android.view.WindowInsets> f2012f = null;

        /* renamed from: g, reason: collision with root package name */
        public static boolean f2013g = false;
        public android.view.WindowInsets b;

        /* renamed from: c, reason: collision with root package name */
        public d.g.g.b f2014c;

        public c() {
            this.b = d();
        }

        public c(d.g.m.z zVar) {
            super(zVar);
            this.b = zVar.e();
        }

        public static android.view.WindowInsets d() {
            if (!f2011e) {
                try {
                    f2010d = android.view.WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (java.lang.ReflectiveOperationException e2) {
                    android.util.Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
                }
                f2011e = true;
            }
            java.lang.reflect.Field field = f2010d;
            if (field != null) {
                try {
                    android.view.WindowInsets windowInsets = (android.view.WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new android.view.WindowInsets(windowInsets);
                    }
                } catch (java.lang.ReflectiveOperationException e3) {
                    android.util.Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
                }
            }
            if (!f2013g) {
                try {
                    f2012f = android.view.WindowInsets.class.getConstructor(android.graphics.Rect.class);
                } catch (java.lang.ReflectiveOperationException e4) {
                    android.util.Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
                }
                f2013g = true;
            }
            java.lang.reflect.Constructor<android.view.WindowInsets> constructor = f2012f;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new android.graphics.Rect());
                } catch (java.lang.ReflectiveOperationException e5) {
                    android.util.Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
                }
            }
            return null;
        }

        @Override // d.g.m.z.f
        public d.g.m.z a() {
            d.g.m.z zVarF = d.g.m.z.f(this.b);
            zVarF.a.j(null);
            zVarF.a.l(this.f2014c);
            return zVarF;
        }

        @Override // d.g.m.z.f
        public void b(d.g.g.b bVar) {
            this.f2014c = bVar;
        }

        @Override // d.g.m.z.f
        public void c(d.g.g.b bVar) {
            android.view.WindowInsets windowInsets = this.b;
            if (windowInsets != null) {
                this.b = windowInsets.replaceSystemWindowInsets(bVar.a, bVar.b, bVar.f1949c, bVar.f1950d);
            }
        }
    }

    public static class d extends d.g.m.z.f {
        public final android.view.WindowInsets.Builder b;

        public d() {
            this.b = new android.view.WindowInsets.Builder();
        }

        public d(d.g.m.z zVar) {
            super(zVar);
            android.view.WindowInsets windowInsetsE = zVar.e();
            this.b = windowInsetsE != null ? new android.view.WindowInsets.Builder(windowInsetsE) : new android.view.WindowInsets.Builder();
        }

        @Override // d.g.m.z.f
        public d.g.m.z a() {
            d.g.m.z zVarF = d.g.m.z.f(this.b.build());
            zVarF.a.j(null);
            return zVarF;
        }

        @Override // d.g.m.z.f
        public void b(d.g.g.b bVar) {
            this.b.setStableInsets(bVar.b());
        }

        @Override // d.g.m.z.f
        public void c(d.g.g.b bVar) {
            this.b.setSystemWindowInsets(bVar.b());
        }
    }

    public static class e extends d.g.m.z.d {
        public e() {
        }

        public e(d.g.m.z zVar) {
            super(zVar);
        }
    }

    public static class f {
        public final d.g.m.z a;

        public f() {
            this.a = new d.g.m.z((d.g.m.z) null);
        }

        public f(d.g.m.z zVar) {
            this.a = zVar;
        }

        public d.g.m.z a() {
            return this.a;
        }

        public void b(d.g.g.b bVar) {
        }

        public void c(d.g.g.b bVar) {
        }
    }

    public static class g extends d.g.m.z.l {
        public static boolean h = false;
        public static java.lang.reflect.Method i;
        public static java.lang.Class<?> j;
        public static java.lang.Class<?> k;
        public static java.lang.reflect.Field l;
        public static java.lang.reflect.Field m;

        /* renamed from: c, reason: collision with root package name */
        public final android.view.WindowInsets f2015c;

        /* renamed from: d, reason: collision with root package name */
        public d.g.g.b[] f2016d;

        /* renamed from: e, reason: collision with root package name */
        public d.g.g.b f2017e;

        /* renamed from: f, reason: collision with root package name */
        public d.g.m.z f2018f;

        /* renamed from: g, reason: collision with root package name */
        public d.g.g.b f2019g;

        public g(d.g.m.z zVar, android.view.WindowInsets windowInsets) {
            super(zVar);
            this.f2017e = null;
            this.f2015c = windowInsets;
        }

        @android.annotation.SuppressLint({"PrivateApi"})
        public static void n() throws java.lang.ClassNotFoundException {
            try {
                i = android.view.View.class.getDeclaredMethod("getViewRootImpl", new java.lang.Class[0]);
                j = java.lang.Class.forName("android.view.ViewRootImpl");
                java.lang.Class<?> cls = java.lang.Class.forName("android.view.View$AttachInfo");
                k = cls;
                l = cls.getDeclaredField("mVisibleInsets");
                m = j.getDeclaredField("mAttachInfo");
                l.setAccessible(true);
                m.setAccessible(true);
            } catch (java.lang.ReflectiveOperationException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to get visible insets. (Reflection error). ");
                sbO.append(e2.getMessage());
                android.util.Log.e("WindowInsetsCompat", sbO.toString(), e2);
            }
            h = true;
        }

        @Override // d.g.m.z.l
        public void d(android.view.View view) throws java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            d.g.g.b bVarM = m(view);
            if (bVarM == null) {
                bVarM = d.g.g.b.f1948e;
            }
            this.f2019g = bVarM;
        }

        @Override // d.g.m.z.l
        public boolean equals(java.lang.Object obj) {
            if (super.equals(obj)) {
                return defpackage.b.a(this.f2019g, ((d.g.m.z.g) obj).f2019g);
            }
            return false;
        }

        @Override // d.g.m.z.l
        public final d.g.g.b g() {
            if (this.f2017e == null) {
                this.f2017e = d.g.g.b.a(this.f2015c.getSystemWindowInsetLeft(), this.f2015c.getSystemWindowInsetTop(), this.f2015c.getSystemWindowInsetRight(), this.f2015c.getSystemWindowInsetBottom());
            }
            return this.f2017e;
        }

        @Override // d.g.m.z.l
        public boolean i() {
            return this.f2015c.isRound();
        }

        @Override // d.g.m.z.l
        public void j(d.g.g.b[] bVarArr) {
            this.f2016d = bVarArr;
        }

        @Override // d.g.m.z.l
        public void k(d.g.m.z zVar) {
            this.f2018f = zVar;
        }

        public final d.g.g.b m(android.view.View view) throws java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (android.os.Build.VERSION.SDK_INT >= 30) {
                throw new java.lang.UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!h) {
                n();
            }
            java.lang.reflect.Method method = i;
            if (method != null && k != null && l != null) {
                try {
                    java.lang.Object objInvoke = method.invoke(view, new java.lang.Object[0]);
                    if (objInvoke == null) {
                        android.util.Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new java.lang.NullPointerException());
                        return null;
                    }
                    android.graphics.Rect rect = (android.graphics.Rect) l.get(m.get(objInvoke));
                    if (rect != null) {
                        return d.g.g.b.a(rect.left, rect.top, rect.right, rect.bottom);
                    }
                    return null;
                } catch (java.lang.ReflectiveOperationException e2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to get visible insets. (Reflection error). ");
                    sbO.append(e2.getMessage());
                    android.util.Log.e("WindowInsetsCompat", sbO.toString(), e2);
                }
            }
            return null;
        }
    }

    public static class h extends d.g.m.z.g {
        public d.g.g.b n;

        public h(d.g.m.z zVar, android.view.WindowInsets windowInsets) {
            super(zVar, windowInsets);
            this.n = null;
        }

        @Override // d.g.m.z.l
        public d.g.m.z b() {
            return d.g.m.z.f(this.f2015c.consumeStableInsets());
        }

        @Override // d.g.m.z.l
        public d.g.m.z c() {
            return d.g.m.z.f(this.f2015c.consumeSystemWindowInsets());
        }

        @Override // d.g.m.z.l
        public final d.g.g.b f() {
            if (this.n == null) {
                this.n = d.g.g.b.a(this.f2015c.getStableInsetLeft(), this.f2015c.getStableInsetTop(), this.f2015c.getStableInsetRight(), this.f2015c.getStableInsetBottom());
            }
            return this.n;
        }

        @Override // d.g.m.z.l
        public boolean h() {
            return this.f2015c.isConsumed();
        }

        @Override // d.g.m.z.l
        public void l(d.g.g.b bVar) {
            this.n = bVar;
        }
    }

    public static class i extends d.g.m.z.h {
        public i(d.g.m.z zVar, android.view.WindowInsets windowInsets) {
            super(zVar, windowInsets);
        }

        @Override // d.g.m.z.l
        public d.g.m.z a() {
            return d.g.m.z.f(this.f2015c.consumeDisplayCutout());
        }

        @Override // d.g.m.z.l
        public d.g.m.c e() {
            android.view.DisplayCutout displayCutout = this.f2015c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new d.g.m.c(displayCutout);
        }

        @Override // d.g.m.z.g, d.g.m.z.l
        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d.g.m.z.i)) {
                return false;
            }
            d.g.m.z.i iVar = (d.g.m.z.i) obj;
            return defpackage.b.a(this.f2015c, iVar.f2015c) && defpackage.b.a(this.f2019g, iVar.f2019g);
        }

        @Override // d.g.m.z.l
        public int hashCode() {
            return this.f2015c.hashCode();
        }
    }

    public static class j extends d.g.m.z.i {
        public d.g.g.b o;
        public d.g.g.b p;
        public d.g.g.b q;

        public j(d.g.m.z zVar, android.view.WindowInsets windowInsets) {
            super(zVar, windowInsets);
            this.o = null;
            this.p = null;
            this.q = null;
        }

        @Override // d.g.m.z.h, d.g.m.z.l
        public void l(d.g.g.b bVar) {
        }
    }

    public static class k extends d.g.m.z.j {
        public static final d.g.m.z r = d.g.m.z.f(android.view.WindowInsets.CONSUMED);

        public k(d.g.m.z zVar, android.view.WindowInsets windowInsets) {
            super(zVar, windowInsets);
        }

        @Override // d.g.m.z.g, d.g.m.z.l
        public final void d(android.view.View view) {
        }
    }

    public static class l {
        public static final d.g.m.z b = new d.g.m.z.b().a().a.a().a.b().a.c();
        public final d.g.m.z a;

        public l(d.g.m.z zVar) {
            this.a = zVar;
        }

        public d.g.m.z a() {
            return this.a;
        }

        public d.g.m.z b() {
            return this.a;
        }

        public d.g.m.z c() {
            return this.a;
        }

        public void d(android.view.View view) {
        }

        public d.g.m.c e() {
            return null;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d.g.m.z.l)) {
                return false;
            }
            d.g.m.z.l lVar = (d.g.m.z.l) obj;
            return i() == lVar.i() && h() == lVar.h() && d.b.k.r.s(g(), lVar.g()) && d.b.k.r.s(f(), lVar.f()) && d.b.k.r.s(e(), lVar.e());
        }

        public d.g.g.b f() {
            return d.g.g.b.f1948e;
        }

        public d.g.g.b g() {
            return d.g.g.b.f1948e;
        }

        public boolean h() {
            return false;
        }

        public int hashCode() {
            return d.b.k.r.Q(java.lang.Boolean.valueOf(i()), java.lang.Boolean.valueOf(h()), g(), f(), e());
        }

        public boolean i() {
            return false;
        }

        public void j(d.g.g.b[] bVarArr) {
        }

        public void k(d.g.m.z zVar) {
        }

        public void l(d.g.g.b bVar) {
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            d.g.m.z zVar = d.g.m.z.k.r;
        } else {
            d.g.m.z zVar2 = d.g.m.z.l.b;
        }
    }

    public z(android.view.WindowInsets windowInsets) {
        d.g.m.z.l gVar;
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            gVar = new d.g.m.z.k(this, windowInsets);
        } else if (i2 >= 29) {
            gVar = new d.g.m.z.j(this, windowInsets);
        } else if (i2 >= 28) {
            gVar = new d.g.m.z.i(this, windowInsets);
        } else if (i2 >= 21) {
            gVar = new d.g.m.z.h(this, windowInsets);
        } else {
            if (i2 < 20) {
                this.a = new d.g.m.z.l(this);
                return;
            }
            gVar = new d.g.m.z.g(this, windowInsets);
        }
        this.a = gVar;
    }

    public z(d.g.m.z zVar) {
        this.a = new d.g.m.z.l(this);
    }

    public static d.g.m.z f(android.view.WindowInsets windowInsets) {
        return g(windowInsets, null);
    }

    public static d.g.m.z g(android.view.WindowInsets windowInsets, android.view.View view) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        if (windowInsets == null) {
            throw null;
        }
        d.g.m.z zVar = new d.g.m.z(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            zVar.a.k(d.g.m.s.t(view));
            zVar.a.d(view.getRootView());
        }
        return zVar;
    }

    @java.lang.Deprecated
    public int a() {
        return this.a.g().f1950d;
    }

    @java.lang.Deprecated
    public int b() {
        return this.a.g().a;
    }

    @java.lang.Deprecated
    public int c() {
        return this.a.g().f1949c;
    }

    @java.lang.Deprecated
    public int d() {
        return this.a.g().b;
    }

    public android.view.WindowInsets e() {
        d.g.m.z.l lVar = this.a;
        if (lVar instanceof d.g.m.z.g) {
            return ((d.g.m.z.g) lVar).f2015c;
        }
        return null;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d.g.m.z) {
            return d.b.k.r.s(this.a, ((d.g.m.z) obj).a);
        }
        return false;
    }

    public int hashCode() {
        d.g.m.z.l lVar = this.a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }
}
