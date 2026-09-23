package d.b.p;

/* loaded from: classes.dex */
public class f extends android.view.MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.Class<?>[] f1683e;

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.Class<?>[] f1684f;
    public final java.lang.Object[] a;
    public final java.lang.Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1685c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.Object f1686d;

    public static class a implements android.view.MenuItem.OnMenuItemClickListener {

        /* renamed from: c, reason: collision with root package name */
        public static final java.lang.Class<?>[] f1687c = {android.view.MenuItem.class};
        public java.lang.Object a;
        public java.lang.reflect.Method b;

        public a(java.lang.Object obj, java.lang.String str) {
            this.a = obj;
            java.lang.Class<?> cls = obj.getClass();
            try {
                this.b = cls.getMethod(str, f1687c);
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbR = e.a.c.a.a.r("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbR.append(cls.getName());
                android.view.InflateException inflateException = new android.view.InflateException(sbR.toString());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(android.view.MenuItem menuItem) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            try {
                if (this.b.getReturnType() == java.lang.Boolean.TYPE) {
                    return ((java.lang.Boolean) this.b.invoke(this.a, menuItem)).booleanValue();
                }
                this.b.invoke(this.a, menuItem);
                return true;
            } catch (java.lang.Exception e2) {
                throw new java.lang.RuntimeException(e2);
            }
        }
    }

    public class b {
        public d.g.m.b A;
        public java.lang.CharSequence B;
        public java.lang.CharSequence C;
        public android.view.Menu a;
        public boolean h;
        public int i;
        public int j;
        public java.lang.CharSequence k;
        public java.lang.CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public java.lang.String x;
        public java.lang.String y;
        public java.lang.String z;
        public android.content.res.ColorStateList D = null;
        public android.graphics.PorterDuff.Mode E = null;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public int f1688c = 0;

        /* renamed from: d, reason: collision with root package name */
        public int f1689d = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f1690e = 0;

        /* renamed from: f, reason: collision with root package name */
        public boolean f1691f = true;

        /* renamed from: g, reason: collision with root package name */
        public boolean f1692g = true;

        public b(android.view.Menu menu) {
            this.a = menu;
        }

        public android.view.SubMenu a() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            this.h = true;
            android.view.SubMenu subMenuAddSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
            c(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public final <T> T b(java.lang.String str, java.lang.Class<?>[] clsArr, java.lang.Object[] objArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            try {
                java.lang.reflect.Constructor<?> constructor = java.lang.Class.forName(str, false, d.b.p.f.this.f1685c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (java.lang.Exception e2) {
                android.util.Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }

        public final void c(android.view.MenuItem menuItem) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.z != null) {
                if (d.b.p.f.this.f1685c.isRestricted()) {
                    throw new java.lang.IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                d.b.p.f fVar = d.b.p.f.this;
                if (fVar.f1686d == null) {
                    fVar.f1686d = fVar.a(fVar.f1685c);
                }
                menuItem.setOnMenuItemClickListener(new d.b.p.f.a(fVar.f1686d, this.z));
            }
            boolean z2 = menuItem instanceof d.b.p.i.i;
            if (z2) {
            }
            if (this.r >= 2) {
                if (z2) {
                    d.b.p.i.i iVar = (d.b.p.i.i) menuItem;
                    iVar.x = (iVar.x & (-5)) | 4;
                } else if (menuItem instanceof d.b.p.i.j) {
                    d.b.p.i.j jVar = (d.b.p.i.j) menuItem;
                    try {
                        if (jVar.f1738e == null) {
                            jVar.f1738e = jVar.f1737d.getClass().getDeclaredMethod("setExclusiveCheckable", java.lang.Boolean.TYPE);
                        }
                        jVar.f1738e.invoke(jVar.f1737d, java.lang.Boolean.TRUE);
                    } catch (java.lang.Exception e2) {
                        android.util.Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                    }
                }
            }
            java.lang.String str = this.x;
            if (str != null) {
                menuItem.setActionView((android.view.View) b(str, d.b.p.f.f1683e, d.b.p.f.this.a));
                z = true;
            }
            int i2 = this.w;
            if (i2 > 0) {
                if (z) {
                    android.util.Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i2);
                }
            }
            d.g.m.b bVar = this.A;
            if (bVar != null) {
                if (menuItem instanceof d.g.h.a.b) {
                    ((d.g.h.a.b) menuItem).a(bVar);
                } else {
                    android.util.Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            java.lang.CharSequence charSequence = this.B;
            boolean z3 = menuItem instanceof d.g.h.a.b;
            if (z3) {
                ((d.g.h.a.b) menuItem).setContentDescription(charSequence);
            } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            java.lang.CharSequence charSequence2 = this.C;
            if (z3) {
                ((d.g.h.a.b) menuItem).setTooltipText(charSequence2);
            } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c2 = this.n;
            int i3 = this.o;
            if (z3) {
                ((d.g.h.a.b) menuItem).setAlphabeticShortcut(c2, i3);
            } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c2, i3);
            }
            char c3 = this.p;
            int i4 = this.q;
            if (z3) {
                ((d.g.h.a.b) menuItem).setNumericShortcut(c3, i4);
            } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c3, i4);
            }
            android.graphics.PorterDuff.Mode mode = this.E;
            if (mode != null) {
                if (z3) {
                    ((d.g.h.a.b) menuItem).setIconTintMode(mode);
                } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            android.content.res.ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                if (z3) {
                    ((d.g.h.a.b) menuItem).setIconTintList(colorStateList);
                } else if (android.os.Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        java.lang.Class<?>[] clsArr = {android.content.Context.class};
        f1683e = clsArr;
        f1684f = clsArr;
    }

    public f(android.content.Context context) {
        super(context);
        this.f1685c = context;
        java.lang.Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public final java.lang.Object a(java.lang.Object obj) {
        return (!(obj instanceof android.app.Activity) && (obj instanceof android.content.ContextWrapper)) ? a(((android.content.ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:82:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(org.xmlpull.v1.XmlPullParser r17, android.util.AttributeSet r18, android.view.Menu r19) throws org.xmlpull.v1.XmlPullParserException, java.lang.IllegalAccessException, java.io.IOException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.p.f.b(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, android.view.Menu menu) {
        if (!(menu instanceof d.g.h.a.a)) {
            super.inflate(i, menu);
            return;
        }
        android.content.res.XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f1685c.getResources().getLayout(i);
                    b(layout, android.util.Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (org.xmlpull.v1.XmlPullParserException e2) {
                    throw new android.view.InflateException("Error inflating menu XML", e2);
                }
            } catch (java.io.IOException e3) {
                throw new android.view.InflateException("Error inflating menu XML", e3);
            }
        } catch (java.lang.Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
