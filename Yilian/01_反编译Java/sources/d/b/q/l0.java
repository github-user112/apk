package d.b.q;

/* loaded from: classes.dex */
public final class l0 {
    public static d.b.q.l0 i;
    public java.util.WeakHashMap<android.content.Context, d.e.i<android.content.res.ColorStateList>> a;
    public d.e.a<java.lang.String, d.b.q.l0.d> b;

    /* renamed from: c, reason: collision with root package name */
    public d.e.i<java.lang.String> f1798c;

    /* renamed from: d, reason: collision with root package name */
    public final java.util.WeakHashMap<android.content.Context, d.e.e<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>>> f1799d = new java.util.WeakHashMap<>(0);

    /* renamed from: e, reason: collision with root package name */
    public android.util.TypedValue f1800e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1801f;

    /* renamed from: g, reason: collision with root package name */
    public d.b.q.l0.e f1802g;
    public static final android.graphics.PorterDuff.Mode h = android.graphics.PorterDuff.Mode.SRC_IN;
    public static final d.b.q.l0.c j = new d.b.q.l0.c(6);

    public static class a implements d.b.q.l0.d {
        @Override // d.b.q.l0.d
        public android.graphics.drawable.Drawable a(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) {
            try {
                return d.b.m.a.a.h(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (java.lang.Exception e2) {
                android.util.Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }

    public static class b implements d.b.q.l0.d {
        @Override // d.b.q.l0.d
        public android.graphics.drawable.Drawable a(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) {
            try {
                android.content.res.Resources resources = context.getResources();
                d.t.a.a.b bVar = new d.t.a.a.b(context, null, null);
                bVar.inflate(resources, xmlPullParser, attributeSet, theme);
                return bVar;
            } catch (java.lang.Exception e2) {
                android.util.Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    public static class c extends d.e.f<java.lang.Integer, android.graphics.PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }
    }

    public interface d {
        android.graphics.drawable.Drawable a(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme);
    }

    public interface e {
    }

    public static class f implements d.b.q.l0.d {
        @Override // d.b.q.l0.d
        public android.graphics.drawable.Drawable a(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) {
            try {
                return d.t.a.a.g.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (java.lang.Exception e2) {
                android.util.Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    public static synchronized d.b.q.l0 d() {
        if (i == null) {
            d.b.q.l0 l0Var = new d.b.q.l0();
            i = l0Var;
            if (android.os.Build.VERSION.SDK_INT < 24) {
                l0Var.a("vector", new d.b.q.l0.f());
                l0Var.a("animated-vector", new d.b.q.l0.b());
                l0Var.a("animated-selector", new d.b.q.l0.a());
            }
        }
        return i;
    }

    public static synchronized android.graphics.PorterDuffColorFilter h(int i2, android.graphics.PorterDuff.Mode mode) {
        android.graphics.PorterDuffColorFilter porterDuffColorFilterA;
        d.b.q.l0.c cVar = j;
        if (cVar == null) {
            throw null;
        }
        int i3 = (i2 + 31) * 31;
        porterDuffColorFilterA = cVar.a(java.lang.Integer.valueOf(mode.hashCode() + i3));
        if (porterDuffColorFilterA == null) {
            porterDuffColorFilterA = new android.graphics.PorterDuffColorFilter(i2, mode);
            d.b.q.l0.c cVar2 = j;
            if (cVar2 == null) {
                throw null;
            }
            cVar2.b(java.lang.Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilterA);
        }
        return porterDuffColorFilterA;
    }

    public static void l(android.graphics.drawable.Drawable drawable, d.b.q.t0 t0Var, int[] iArr) {
        if (d.b.q.c0.a(drawable) && drawable.mutate() != drawable) {
            android.util.Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (t0Var.f1830d || t0Var.f1829c) {
            android.graphics.PorterDuffColorFilter porterDuffColorFilterH = null;
            android.content.res.ColorStateList colorStateList = t0Var.f1830d ? t0Var.a : null;
            android.graphics.PorterDuff.Mode mode = t0Var.f1829c ? t0Var.b : h;
            if (colorStateList != null && mode != null) {
                porterDuffColorFilterH = h(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilterH);
        } else {
            drawable.clearColorFilter();
        }
        if (android.os.Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public final void a(java.lang.String str, d.b.q.l0.d dVar) {
        if (this.b == null) {
            this.b = new d.e.a<>();
        }
        this.b.put(str, dVar);
    }

    public final synchronized boolean b(android.content.Context context, long j2, android.graphics.drawable.Drawable drawable) {
        boolean z;
        android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            d.e.e<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> eVar = this.f1799d.get(context);
            if (eVar == null) {
                eVar = new d.e.e<>();
                this.f1799d.put(context, eVar);
            }
            eVar.g(j2, new java.lang.ref.WeakReference<>(constantState));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public final android.graphics.drawable.Drawable c(android.content.Context context, int i2) throws android.content.res.Resources.NotFoundException {
        if (this.f1800e == null) {
            this.f1800e = new android.util.TypedValue();
        }
        android.util.TypedValue typedValue = this.f1800e;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        android.graphics.drawable.Drawable drawableE = e(context, j2);
        if (drawableE != null) {
            return drawableE;
        }
        d.b.q.l0.e eVar = this.f1802g;
        android.graphics.drawable.LayerDrawable layerDrawable = null;
        if (eVar != null) {
            if (i2 == d.b.e.abc_cab_background_top_material) {
                layerDrawable = new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{f(context, d.b.e.abc_cab_background_internal_bg), f(context, d.b.e.abc_cab_background_top_mtrl_alpha)});
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j2, layerDrawable);
        }
        return layerDrawable;
    }

    public final synchronized android.graphics.drawable.Drawable e(android.content.Context context, long j2) {
        d.e.e<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> eVar = this.f1799d.get(context);
        if (eVar == null) {
            return null;
        }
        java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState> weakReferenceF = eVar.f(j2, null);
        if (weakReferenceF != null) {
            android.graphics.drawable.Drawable.ConstantState constantState = weakReferenceF.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int iB = d.e.d.b(eVar.b, eVar.f1896d, j2);
            if (iB >= 0) {
                java.lang.Object[] objArr = eVar.f1895c;
                java.lang.Object obj = objArr[iB];
                java.lang.Object obj2 = d.e.e.f1894e;
                if (obj != obj2) {
                    objArr[iB] = obj2;
                    eVar.a = true;
                }
            }
        }
        return null;
    }

    public synchronized android.graphics.drawable.Drawable f(android.content.Context context, int i2) {
        return g(context, i2, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r0 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized android.graphics.drawable.Drawable g(android.content.Context r5, int r6, boolean r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f1801f     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L6
            goto L2a
        L6:
            r0 = 1
            r4.f1801f = r0     // Catch: java.lang.Throwable -> L47
            int r1 = d.b.n.a.abc_vector_test     // Catch: java.lang.Throwable -> L47
            android.graphics.drawable.Drawable r1 = r4.f(r5, r1)     // Catch: java.lang.Throwable -> L47
            r2 = 0
            if (r1 == 0) goto L49
            boolean r3 = r1 instanceof d.t.a.a.g     // Catch: java.lang.Throwable -> L47
            if (r3 != 0) goto L28
            java.lang.String r3 = "android.graphics.drawable.VectorDrawable"
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> L47
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L47
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Throwable -> L47
            if (r1 == 0) goto L27
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L49
        L2a:
            android.graphics.drawable.Drawable r0 = r4.j(r5, r6)     // Catch: java.lang.Throwable -> L47
            if (r0 != 0) goto L34
            android.graphics.drawable.Drawable r0 = r4.c(r5, r6)     // Catch: java.lang.Throwable -> L47
        L34:
            if (r0 != 0) goto L3a
            android.graphics.drawable.Drawable r0 = d.g.f.a.d(r5, r6)     // Catch: java.lang.Throwable -> L47
        L3a:
            if (r0 == 0) goto L40
            android.graphics.drawable.Drawable r0 = r4.k(r5, r6, r7, r0)     // Catch: java.lang.Throwable -> L47
        L40:
            if (r0 == 0) goto L45
            d.b.q.c0.b(r0)     // Catch: java.lang.Throwable -> L47
        L45:
            monitor-exit(r4)
            return r0
        L47:
            r5 = move-exception
            goto L53
        L49:
            r4.f1801f = r2     // Catch: java.lang.Throwable -> L47
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L47
            java.lang.String r6 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L47
            throw r5     // Catch: java.lang.Throwable -> L47
        L53:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.l0.g(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    public synchronized android.content.res.ColorStateList i(android.content.Context context, int i2) {
        android.content.res.ColorStateList colorStateListD;
        d.e.i<android.content.res.ColorStateList> iVar;
        java.util.WeakHashMap<android.content.Context, d.e.i<android.content.res.ColorStateList>> weakHashMap = this.a;
        android.content.res.ColorStateList colorStateListC = null;
        colorStateListD = (weakHashMap == null || (iVar = weakHashMap.get(context)) == null) ? null : iVar.d(i2, null);
        if (colorStateListD == null) {
            if (this.f1802g != null) {
                colorStateListC = ((d.b.q.i.a) this.f1802g).c(context, i2);
            }
            if (colorStateListC != null) {
                if (this.a == null) {
                    this.a = new java.util.WeakHashMap<>();
                }
                d.e.i<android.content.res.ColorStateList> iVar2 = this.a.get(context);
                if (iVar2 == null) {
                    iVar2 = new d.e.i<>();
                    this.a.put(context, iVar2);
                }
                iVar2.a(i2, colorStateListC);
            }
            colorStateListD = colorStateListC;
        }
        return colorStateListD;
    }

    public final android.graphics.drawable.Drawable j(android.content.Context context, int i2) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        int next;
        d.e.a<java.lang.String, d.b.q.l0.d> aVar = this.b;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        d.e.i<java.lang.String> iVar = this.f1798c;
        if (iVar != null) {
            java.lang.String strD = iVar.d(i2, null);
            if ("appcompat_skip_skip".equals(strD) || (strD != null && this.b.getOrDefault(strD, null) == null)) {
                return null;
            }
        } else {
            this.f1798c = new d.e.i<>();
        }
        if (this.f1800e == null) {
            this.f1800e = new android.util.TypedValue();
        }
        android.util.TypedValue typedValue = this.f1800e;
        android.content.res.Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        android.graphics.drawable.Drawable drawableE = e(context, j2);
        if (drawableE != null) {
            return drawableE;
        }
        java.lang.CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                android.content.res.XmlResourceParser xml = resources.getXml(i2);
                android.util.AttributeSet attributeSetAsAttributeSet = android.util.Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
                }
                java.lang.String name = xml.getName();
                this.f1798c.a(i2, name);
                d.b.q.l0.d dVar = this.b.get(name);
                if (dVar != null) {
                    drawableE = dVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableE != null) {
                    drawableE.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j2, drawableE);
                }
            } catch (java.lang.Exception e2) {
                android.util.Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (drawableE == null) {
            this.f1798c.a(i2, "appcompat_skip_skip");
        }
        return drawableE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable k(android.content.Context r10, int r11, boolean r12, android.graphics.drawable.Drawable r13) {
        /*
            r9 = this;
            android.content.res.ColorStateList r0 = r9.i(r10, r11)
            r1 = 0
            if (r0 == 0) goto L2c
            boolean r10 = d.b.q.c0.a(r13)
            if (r10 == 0) goto L11
            android.graphics.drawable.Drawable r13 = r13.mutate()
        L11:
            android.graphics.drawable.Drawable r13 = d.b.k.r.A0(r13)
            d.b.k.r.t0(r13, r0)
            d.b.q.l0$e r10 = r9.f1802g
            if (r10 != 0) goto L1d
            goto L25
        L1d:
            d.b.q.i$a r10 = (d.b.q.i.a) r10
            int r10 = d.b.e.abc_switch_thumb_material
            if (r11 != r10) goto L25
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.MULTIPLY
        L25:
            if (r1 == 0) goto La7
            d.b.k.r.u0(r13, r1)
            goto La7
        L2c:
            d.b.q.l0$e r0 = r9.f1802g
            if (r0 == 0) goto L9e
            d.b.q.i$a r0 = (d.b.q.i.a) r0
            if (r0 == 0) goto L9d
            int r2 = d.b.e.abc_seekbar_track_material
            r3 = 1
            r4 = 16908301(0x102000d, float:2.3877265E-38)
            r5 = 16908303(0x102000f, float:2.387727E-38)
            r6 = 16908288(0x1020000, float:2.387723E-38)
            if (r11 != r2) goto L72
            r2 = r13
            android.graphics.drawable.LayerDrawable r2 = (android.graphics.drawable.LayerDrawable) r2
            android.graphics.drawable.Drawable r6 = r2.findDrawableByLayerId(r6)
            int r7 = d.b.a.colorControlNormal
            int r7 = d.b.q.q0.b(r10, r7)
            android.graphics.PorterDuff$Mode r8 = d.b.q.i.b
            r0.d(r6, r7, r8)
            android.graphics.drawable.Drawable r5 = r2.findDrawableByLayerId(r5)
            int r6 = d.b.a.colorControlNormal
        L59:
            int r6 = d.b.q.q0.b(r10, r6)
            android.graphics.PorterDuff$Mode r7 = d.b.q.i.b
            r0.d(r5, r6, r7)
            android.graphics.drawable.Drawable r2 = r2.findDrawableByLayerId(r4)
            int r4 = d.b.a.colorControlActivated
            int r4 = d.b.q.q0.b(r10, r4)
            android.graphics.PorterDuff$Mode r5 = d.b.q.i.b
            r0.d(r2, r4, r5)
            goto L9a
        L72:
            int r2 = d.b.e.abc_ratingbar_material
            if (r11 == r2) goto L81
            int r2 = d.b.e.abc_ratingbar_indicator_material
            if (r11 == r2) goto L81
            int r2 = d.b.e.abc_ratingbar_small_material
            if (r11 != r2) goto L7f
            goto L81
        L7f:
            r3 = 0
            goto L9a
        L81:
            r2 = r13
            android.graphics.drawable.LayerDrawable r2 = (android.graphics.drawable.LayerDrawable) r2
            android.graphics.drawable.Drawable r6 = r2.findDrawableByLayerId(r6)
            int r7 = d.b.a.colorControlNormal
            int r7 = d.b.q.q0.a(r10, r7)
            android.graphics.PorterDuff$Mode r8 = d.b.q.i.b
            r0.d(r6, r7, r8)
            android.graphics.drawable.Drawable r5 = r2.findDrawableByLayerId(r5)
            int r6 = d.b.a.colorControlActivated
            goto L59
        L9a:
            if (r3 == 0) goto L9e
            goto La7
        L9d:
            throw r1
        L9e:
            boolean r10 = r9.m(r10, r11, r13)
            if (r10 != 0) goto La7
            if (r12 == 0) goto La7
            r13 = r1
        La7:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.l0.k(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m(android.content.Context r8, int r9, android.graphics.drawable.Drawable r10) {
        /*
            r7 = this;
            d.b.q.l0$e r0 = r7.f1802g
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L6f
            d.b.q.i$a r0 = (d.b.q.i.a) r0
            if (r0 == 0) goto L6d
            android.graphics.PorterDuff$Mode r3 = d.b.q.i.b
            int[] r4 = r0.a
            boolean r4 = r0.a(r4, r9)
            r5 = 16842801(0x1010031, float:2.3693695E-38)
            r6 = -1
            if (r4 == 0) goto L1b
            int r5 = d.b.a.colorControlNormal
            goto L44
        L1b:
            int[] r4 = r0.f1787c
            boolean r4 = r0.a(r4, r9)
            if (r4 == 0) goto L26
            int r5 = d.b.a.colorControlActivated
            goto L44
        L26:
            int[] r4 = r0.f1788d
            boolean r0 = r0.a(r4, r9)
            if (r0 == 0) goto L31
            android.graphics.PorterDuff$Mode r3 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L44
        L31:
            int r0 = d.b.e.abc_list_divider_mtrl_alpha
            if (r9 != r0) goto L40
            r9 = 16842800(0x1010030, float:2.3693693E-38)
            r0 = 1109603123(0x42233333, float:40.8)
            int r0 = java.lang.Math.round(r0)
            goto L46
        L40:
            int r0 = d.b.e.abc_dialog_material_background
            if (r9 != r0) goto L48
        L44:
            r9 = r5
            r0 = -1
        L46:
            r4 = 1
            goto L4b
        L48:
            r9 = 0
            r0 = -1
            r4 = 0
        L4b:
            if (r4 == 0) goto L69
            boolean r4 = d.b.q.c0.a(r10)
            if (r4 == 0) goto L57
            android.graphics.drawable.Drawable r10 = r10.mutate()
        L57:
            int r8 = d.b.q.q0.b(r8, r9)
            android.graphics.PorterDuffColorFilter r8 = d.b.q.i.c(r8, r3)
            r10.setColorFilter(r8)
            if (r0 == r6) goto L67
            r10.setAlpha(r0)
        L67:
            r8 = 1
            goto L6a
        L69:
            r8 = 0
        L6a:
            if (r8 == 0) goto L6f
            goto L70
        L6d:
            r8 = 0
            throw r8
        L6f:
            r1 = 0
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.l0.m(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
