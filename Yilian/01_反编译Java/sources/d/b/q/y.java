package d.b.q;

/* loaded from: classes.dex */
public class y {
    public static final android.graphics.RectF k = new android.graphics.RectF();
    public static java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.reflect.Method> l = new java.util.concurrent.ConcurrentHashMap<>();
    public static java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.reflect.Field> m = new java.util.concurrent.ConcurrentHashMap<>();
    public int a = 0;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f1853c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f1854d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f1855e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public int[] f1856f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f1857g = false;
    public android.text.TextPaint h;
    public final android.widget.TextView i;
    public final android.content.Context j;

    public y(android.widget.TextView textView) {
        this.i = textView;
        this.j = textView.getContext();
    }

    public static java.lang.reflect.Method e(java.lang.String str) {
        try {
            java.lang.reflect.Method declaredMethod = l.get(str);
            if (declaredMethod == null && (declaredMethod = android.widget.TextView.class.getDeclaredMethod(str, new java.lang.Class[0])) != null) {
                declaredMethod.setAccessible(true);
                l.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (java.lang.Exception e2) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    public static <T> T f(java.lang.Object obj, java.lang.String str, T t) {
        try {
            return (T) e(str).invoke(obj, new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    public void a() {
        if (j() && this.a != 0) {
            if (this.b) {
                if (this.i.getMeasuredHeight() <= 0 || this.i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = android.os.Build.VERSION.SDK_INT >= 29 ? this.i.isHorizontallyScrollable() : ((java.lang.Boolean) f(this.i, "getHorizontallyScrolling", java.lang.Boolean.FALSE)).booleanValue() ? com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : (this.i.getMeasuredWidth() - this.i.getTotalPaddingLeft()) - this.i.getTotalPaddingRight();
                int height = (this.i.getHeight() - this.i.getCompoundPaddingBottom()) - this.i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (k) {
                    k.setEmpty();
                    k.right = measuredWidth;
                    k.bottom = height;
                    float fD = d(k);
                    if (fD != this.i.getTextSize()) {
                        g(0, fD);
                    }
                }
            }
            this.b = true;
        }
    }

    public final int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        java.util.Arrays.sort(iArr);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i : iArr) {
            if (i > 0 && java.util.Collections.binarySearch(arrayList, java.lang.Integer.valueOf(i)) < 0) {
                arrayList.add(java.lang.Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((java.lang.Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    public final android.text.StaticLayout c(java.lang.CharSequence charSequence, android.text.Layout.Alignment alignment, int i, int i2) {
        android.text.StaticLayout.Builder builderObtain = android.text.StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.h, i);
        android.text.StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(this.i.getLineSpacingExtra(), this.i.getLineSpacingMultiplier()).setIncludePad(this.i.getIncludeFontPadding()).setBreakStrategy(this.i.getBreakStrategy()).setHyphenationFrequency(this.i.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            builderObtain.setTextDirection(android.os.Build.VERSION.SDK_INT >= 29 ? this.i.getTextDirectionHeuristic() : (android.text.TextDirectionHeuristic) f(this.i, "getTextDirectionHeuristic", android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR));
        } catch (java.lang.ClassCastException unused) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return builderObtain.build();
    }

    public final int d(android.graphics.RectF rectF) {
        java.lang.CharSequence transformation;
        int length = this.f1856f.length;
        if (length == 0) {
            throw new java.lang.IllegalStateException("No available text sizes to choose from.");
        }
        int i = length - 1;
        int i2 = 1;
        int i3 = 0;
        while (i2 <= i) {
            int i4 = (i2 + i) / 2;
            int i5 = this.f1856f[i4];
            java.lang.CharSequence text = this.i.getText();
            android.text.method.TransformationMethod transformationMethod = this.i.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.i)) != null) {
                text = transformation;
            }
            int maxLines = this.i.getMaxLines();
            android.text.TextPaint textPaint = this.h;
            if (textPaint == null) {
                this.h = new android.text.TextPaint();
            } else {
                textPaint.reset();
            }
            this.h.set(this.i.getPaint());
            this.h.setTextSize(i5);
            android.text.Layout.Alignment alignment = (android.text.Layout.Alignment) f(this.i, "getLayoutAlignment", android.text.Layout.Alignment.ALIGN_NORMAL);
            int iRound = java.lang.Math.round(rectF.right);
            android.text.StaticLayout staticLayoutC = android.os.Build.VERSION.SDK_INT >= 23 ? c(text, alignment, iRound, maxLines) : new android.text.StaticLayout(text, this.h, iRound, alignment, this.i.getLineSpacingMultiplier(), this.i.getLineSpacingExtra(), this.i.getIncludeFontPadding());
            if ((maxLines == -1 || (staticLayoutC.getLineCount() <= maxLines && staticLayoutC.getLineEnd(staticLayoutC.getLineCount() - 1) == text.length())) && ((float) staticLayoutC.getHeight()) <= rectF.bottom) {
                int i6 = i4 + 1;
                i3 = i2;
                i2 = i6;
            } else {
                i3 = i4 - 1;
                i = i3;
            }
        }
        return this.f1856f[i3];
    }

    public void g(int i, float f2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        android.content.Context context = this.j;
        float fApplyDimension = android.util.TypedValue.applyDimension(i, f2, (context == null ? android.content.res.Resources.getSystem() : context.getResources()).getDisplayMetrics());
        if (fApplyDimension != this.i.getPaint().getTextSize()) {
            this.i.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = android.os.Build.VERSION.SDK_INT >= 18 ? this.i.isInLayout() : false;
            if (this.i.getLayout() != null) {
                this.b = false;
                try {
                    java.lang.reflect.Method methodE = e("nullLayouts");
                    if (methodE != null) {
                        methodE.invoke(this.i, new java.lang.Object[0]);
                    }
                } catch (java.lang.Exception e2) {
                    android.util.Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (zIsInLayout) {
                    this.i.forceLayout();
                } else {
                    this.i.requestLayout();
                }
                this.i.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.a == 1) {
            if (!this.f1857g || this.f1856f.length == 0) {
                int iFloor = ((int) java.lang.Math.floor((this.f1855e - this.f1854d) / this.f1853c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i = 0; i < iFloor; i++) {
                    iArr[i] = java.lang.Math.round((i * this.f1853c) + this.f1854d);
                }
                this.f1856f = b(iArr);
            }
            this.b = true;
        } else {
            this.b = false;
        }
        return this.b;
    }

    public final boolean i() {
        boolean z = this.f1856f.length > 0;
        this.f1857g = z;
        if (z) {
            this.a = 1;
            int[] iArr = this.f1856f;
            this.f1854d = iArr[0];
            this.f1855e = iArr[r0 - 1];
            this.f1853c = -1.0f;
        }
        return this.f1857g;
    }

    public final boolean j() {
        return !(this.i instanceof d.b.q.j);
    }

    public final void k(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new java.lang.IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new java.lang.IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= 0.0f) {
            throw new java.lang.IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.a = 1;
        this.f1854d = f2;
        this.f1855e = f3;
        this.f1853c = f4;
        this.f1857g = false;
    }
}
