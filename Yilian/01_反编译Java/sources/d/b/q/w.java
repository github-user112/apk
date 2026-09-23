package d.b.q;

/* loaded from: classes.dex */
public class w {
    public final android.widget.TextView a;
    public d.b.q.t0 b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.q.t0 f1839c;

    /* renamed from: d, reason: collision with root package name */
    public d.b.q.t0 f1840d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.q.t0 f1841e;

    /* renamed from: f, reason: collision with root package name */
    public d.b.q.t0 f1842f;

    /* renamed from: g, reason: collision with root package name */
    public d.b.q.t0 f1843g;
    public d.b.q.t0 h;
    public final d.b.q.y i;
    public int j = 0;
    public int k = -1;
    public android.graphics.Typeface l;
    public boolean m;

    public static class a extends d.g.f.b.h.c {
        public final java.lang.ref.WeakReference<d.b.q.w> a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1844c;

        /* renamed from: d.b.q.w$a$a, reason: collision with other inner class name */
        public class RunnableC0040a implements java.lang.Runnable {
            public final java.lang.ref.WeakReference<d.b.q.w> a;
            public final android.graphics.Typeface b;

            public RunnableC0040a(d.b.q.w.a aVar, java.lang.ref.WeakReference<d.b.q.w> weakReference, android.graphics.Typeface typeface) {
                this.a = weakReference;
                this.b = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.b.q.w wVar = this.a.get();
                if (wVar == null) {
                    return;
                }
                android.graphics.Typeface typeface = this.b;
                if (wVar.m) {
                    wVar.a.setTypeface(typeface);
                    wVar.l = typeface;
                }
            }
        }

        public a(d.b.q.w wVar, int i, int i2) {
            this.a = new java.lang.ref.WeakReference<>(wVar);
            this.b = i;
            this.f1844c = i2;
        }

        @Override // d.g.f.b.h.c
        public void d(android.graphics.Typeface typeface) {
            int i;
            d.b.q.w wVar = this.a.get();
            if (wVar == null) {
                return;
            }
            if (android.os.Build.VERSION.SDK_INT >= 28 && (i = this.b) != -1) {
                typeface = android.graphics.Typeface.create(typeface, i, (this.f1844c & 2) != 0);
            }
            wVar.a.post(new d.b.q.w.a.RunnableC0040a(this, this.a, typeface));
        }
    }

    public w(android.widget.TextView textView) {
        this.a = textView;
        this.i = new d.b.q.y(this.a);
    }

    public static d.b.q.t0 c(android.content.Context context, d.b.q.i iVar, int i) {
        android.content.res.ColorStateList colorStateListD = iVar.d(context, i);
        if (colorStateListD == null) {
            return null;
        }
        d.b.q.t0 t0Var = new d.b.q.t0();
        t0Var.f1830d = true;
        t0Var.a = colorStateListD;
        return t0Var;
    }

    public final void a(android.graphics.drawable.Drawable drawable, d.b.q.t0 t0Var) {
        if (drawable == null || t0Var == null) {
            return;
        }
        d.b.q.i.f(drawable, t0Var, this.a.getDrawableState());
    }

    public void b() {
        if (this.b != null || this.f1839c != null || this.f1840d != null || this.f1841e != null) {
            android.graphics.drawable.Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f1839c);
            a(compoundDrawables[2], this.f1840d);
            a(compoundDrawables[3], this.f1841e);
        }
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            if (this.f1842f == null && this.f1843g == null) {
                return;
            }
            android.graphics.drawable.Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f1842f);
            a(compoundDrawablesRelative[2], this.f1843g);
        }
    }

    public boolean d() {
        d.b.q.y yVar = this.i;
        return yVar.j() && yVar.a != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0401  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(android.util.AttributeSet r18, int r19) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.w.e(android.util.AttributeSet, int):void");
    }

    public void f(android.content.Context context, int i) {
        java.lang.String strK;
        android.content.res.ColorStateList colorStateListB;
        d.b.q.v0 v0Var = new d.b.q.v0(context, context.obtainStyledAttributes(i, d.b.j.TextAppearance));
        if (v0Var.m(d.b.j.TextAppearance_textAllCaps)) {
            this.a.setAllCaps(v0Var.a(d.b.j.TextAppearance_textAllCaps, false));
        }
        if (android.os.Build.VERSION.SDK_INT < 23 && v0Var.m(d.b.j.TextAppearance_android_textColor) && (colorStateListB = v0Var.b(d.b.j.TextAppearance_android_textColor)) != null) {
            this.a.setTextColor(colorStateListB);
        }
        if (v0Var.m(d.b.j.TextAppearance_android_textSize) && v0Var.d(d.b.j.TextAppearance_android_textSize, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        j(context, v0Var);
        if (android.os.Build.VERSION.SDK_INT >= 26 && v0Var.m(d.b.j.TextAppearance_fontVariationSettings) && (strK = v0Var.k(d.b.j.TextAppearance_fontVariationSettings)) != null) {
            this.a.setFontVariationSettings(strK);
        }
        v0Var.b.recycle();
        android.graphics.Typeface typeface = this.l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.j);
        }
    }

    public void g(int i, int i2, int i3, int i4) {
        d.b.q.y yVar = this.i;
        if (yVar.j()) {
            android.util.DisplayMetrics displayMetrics = yVar.j.getResources().getDisplayMetrics();
            yVar.k(android.util.TypedValue.applyDimension(i4, i, displayMetrics), android.util.TypedValue.applyDimension(i4, i2, displayMetrics), android.util.TypedValue.applyDimension(i4, i3, displayMetrics));
            if (yVar.h()) {
                yVar.a();
            }
        }
    }

    public void h(int[] iArr, int i) {
        d.b.q.y yVar = this.i;
        if (yVar.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = java.util.Arrays.copyOf(iArr, length);
                } else {
                    android.util.DisplayMetrics displayMetrics = yVar.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = java.lang.Math.round(android.util.TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                yVar.f1856f = yVar.b(iArrCopyOf);
                if (!yVar.i()) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("None of the preset sizes is valid: ");
                    sbO.append(java.util.Arrays.toString(iArr));
                    throw new java.lang.IllegalArgumentException(sbO.toString());
                }
            } else {
                yVar.f1857g = false;
            }
            if (yVar.h()) {
                yVar.a();
            }
        }
    }

    public void i(int i) {
        d.b.q.y yVar = this.i;
        if (yVar.j()) {
            if (i == 0) {
                yVar.a = 0;
                yVar.f1854d = -1.0f;
                yVar.f1855e = -1.0f;
                yVar.f1853c = -1.0f;
                yVar.f1856f = new int[0];
                yVar.b = false;
                return;
            }
            if (i != 1) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Unknown auto-size text type: ", i));
            }
            android.util.DisplayMetrics displayMetrics = yVar.j.getResources().getDisplayMetrics();
            yVar.k(android.util.TypedValue.applyDimension(2, 12.0f, displayMetrics), android.util.TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (yVar.h()) {
                yVar.a();
            }
        }
    }

    public final void j(android.content.Context context, d.b.q.v0 v0Var) {
        java.lang.String strK;
        android.graphics.Typeface typefaceCreate;
        android.graphics.Typeface typeface;
        this.j = v0Var.h(d.b.j.TextAppearance_android_textStyle, this.j);
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            int iH = v0Var.h(d.b.j.TextAppearance_android_textFontWeight, -1);
            this.k = iH;
            if (iH != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        if (!v0Var.m(d.b.j.TextAppearance_android_fontFamily) && !v0Var.m(d.b.j.TextAppearance_fontFamily)) {
            if (v0Var.m(d.b.j.TextAppearance_android_typeface)) {
                this.m = false;
                int iH2 = v0Var.h(d.b.j.TextAppearance_android_typeface, 1);
                if (iH2 == 1) {
                    typeface = android.graphics.Typeface.SANS_SERIF;
                } else if (iH2 == 2) {
                    typeface = android.graphics.Typeface.SERIF;
                } else if (iH2 != 3) {
                    return;
                } else {
                    typeface = android.graphics.Typeface.MONOSPACE;
                }
                this.l = typeface;
                return;
            }
            return;
        }
        this.l = null;
        int i = v0Var.m(d.b.j.TextAppearance_fontFamily) ? d.b.j.TextAppearance_fontFamily : d.b.j.TextAppearance_android_fontFamily;
        int i2 = this.k;
        int i3 = this.j;
        if (!context.isRestricted()) {
            try {
                android.graphics.Typeface typefaceG = v0Var.g(i, this.j, new d.b.q.w.a(this, i2, i3));
                if (typefaceG != null) {
                    if (android.os.Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                        typefaceG = android.graphics.Typeface.create(android.graphics.Typeface.create(typefaceG, 0), this.k, (this.j & 2) != 0);
                    }
                    this.l = typefaceG;
                }
                this.m = this.l == null;
            } catch (android.content.res.Resources.NotFoundException | java.lang.UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (strK = v0Var.k(i)) == null) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT < 28 || this.k == -1) {
            typefaceCreate = android.graphics.Typeface.create(strK, this.j);
        } else {
            typefaceCreate = android.graphics.Typeface.create(android.graphics.Typeface.create(strK, 0), this.k, (this.j & 2) != 0);
        }
        this.l = typefaceCreate;
    }
}
