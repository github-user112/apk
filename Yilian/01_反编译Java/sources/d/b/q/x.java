package d.b.q;

/* loaded from: classes.dex */
public class x extends android.widget.TextView implements d.g.m.n, d.g.n.f, d.g.n.b {
    public final d.b.q.e a;
    public final d.b.q.w b;

    /* renamed from: c, reason: collision with root package name */
    public final d.b.q.v f1845c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.concurrent.Future<d.g.k.a> f1846d;

    public x(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public x(android.content.Context context, android.util.AttributeSet attributeSet, int i) throws android.content.res.Resources.NotFoundException {
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.e eVar = new d.b.q.e(this);
        this.a = eVar;
        eVar.d(attributeSet, i);
        d.b.q.w wVar = new d.b.q.w(this);
        this.b = wVar;
        wVar.e(attributeSet, i);
        this.b.b();
        this.f1845c = new d.b.q.v(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.a();
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (d.g.n.b.E) {
            return super.getAutoSizeMaxTextSize();
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            return java.lang.Math.round(wVar.i.f1855e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (d.g.n.b.E) {
            return super.getAutoSizeMinTextSize();
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            return java.lang.Math.round(wVar.i.f1854d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (d.g.n.b.E) {
            return super.getAutoSizeStepGranularity();
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            return java.lang.Math.round(wVar.i.f1853c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (d.g.n.b.E) {
            return super.getAutoSizeTextAvailableSizes();
        }
        d.b.q.w wVar = this.b;
        return wVar != null ? wVar.i.f1856f : new int[0];
    }

    @Override // android.widget.TextView
    @android.annotation.SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (d.g.n.b.E) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            return wVar.i.a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public android.content.res.ColorStateList getSupportCompoundDrawablesTintList() {
        d.b.q.t0 t0Var = this.b.h;
        if (t0Var != null) {
            return t0Var.a;
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        d.b.q.t0 t0Var = this.b.h;
        if (t0Var != null) {
            return t0Var.b;
        }
        return null;
    }

    @Override // android.widget.TextView
    public java.lang.CharSequence getText() {
        java.util.concurrent.Future<d.g.k.a> future = this.f1846d;
        if (future != null) {
            try {
                this.f1846d = null;
                d.b.k.r.r0(this, future.get());
            } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public android.view.textclassifier.TextClassifier getTextClassifier() {
        d.b.q.v vVar;
        return (android.os.Build.VERSION.SDK_INT >= 28 || (vVar = this.f1845c) == null) ? super.getTextClassifier() : vVar.a();
    }

    public d.g.k.a.C0047a getTextMetricsParamsCompat() {
        return d.b.k.r.O(this);
    }

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        android.view.inputmethod.InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d.b.k.r.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        d.b.q.w wVar = this.b;
        if (wVar == null || d.g.n.b.E) {
            return;
        }
        wVar.i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        java.util.concurrent.Future<d.g.k.a> future = this.f1846d;
        if (future != null) {
            try {
                this.f1846d = null;
                d.b.k.r.r0(this, future.get());
            } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        d.b.q.w wVar = this.b;
        if (wVar == null || d.g.n.b.E || !wVar.d()) {
            return;
        }
        this.b.i.a();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (d.g.n.b.E) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.g(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (d.g.n.b.E) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.h(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (d.g.n.b.E) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.i(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        android.content.Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? d.b.l.a.a.b(context, i) : null, i2 != 0 ? d.b.l.a.a.b(context, i2) : null, i3 != 0 ? d.b.l.a.a.b(context, i3) : null, i4 != 0 ? d.b.l.a.a.b(context, i4) : null);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        android.content.Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? d.b.l.a.a.b(context, i) : null, i2 != 0 ? d.b.l.a.a.b(context, i2) : null, i3 != 0 ? d.b.l.a.a.b(context, i3) : null, i4 != 0 ? d.b.l.a.a.b(context, i4) : null);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.k.r.B0(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            d.b.k.r.k0(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            d.b.k.r.n0(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        d.b.k.r.p0(this, i);
    }

    public void setPrecomputedText(d.g.k.a aVar) {
        d.b.k.r.r0(this, aVar);
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    @Override // d.g.n.f
    public void setSupportCompoundDrawablesTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.w wVar = this.b;
        if (wVar.h == null) {
            wVar.h = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = wVar.h;
        t0Var.a = colorStateList;
        t0Var.f1830d = colorStateList != null;
        d.b.q.t0 t0Var2 = wVar.h;
        wVar.b = t0Var2;
        wVar.f1839c = t0Var2;
        wVar.f1840d = t0Var2;
        wVar.f1841e = t0Var2;
        wVar.f1842f = t0Var2;
        wVar.f1843g = t0Var2;
        this.b.b();
    }

    @Override // d.g.n.f
    public void setSupportCompoundDrawablesTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.w wVar = this.b;
        if (wVar.h == null) {
            wVar.h = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = wVar.h;
        t0Var.b = mode;
        t0Var.f1829c = mode != null;
        d.b.q.t0 t0Var2 = wVar.h;
        wVar.b = t0Var2;
        wVar.f1839c = t0Var2;
        wVar.f1840d = t0Var2;
        wVar.f1841e = t0Var2;
        wVar.f1842f = t0Var2;
        wVar.f1843g = t0Var2;
        this.b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i) {
        super.setTextAppearance(context, i);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(android.view.textclassifier.TextClassifier textClassifier) {
        d.b.q.v vVar;
        if (android.os.Build.VERSION.SDK_INT >= 28 || (vVar = this.f1845c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            vVar.b = textClassifier;
        }
    }

    public void setTextFuture(java.util.concurrent.Future<d.g.k.a> future) {
        this.f1846d = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(d.g.k.a.C0047a c0047a) {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            android.text.TextDirectionHeuristic textDirectionHeuristic = c0047a.b;
            int i = 1;
            if (textDirectionHeuristic != android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                if (textDirectionHeuristic == android.text.TextDirectionHeuristics.ANYRTL_LTR) {
                    i = 2;
                } else if (textDirectionHeuristic == android.text.TextDirectionHeuristics.LTR) {
                    i = 3;
                } else if (textDirectionHeuristic == android.text.TextDirectionHeuristics.RTL) {
                    i = 4;
                } else if (textDirectionHeuristic == android.text.TextDirectionHeuristics.LOCALE) {
                    i = 5;
                } else if (textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                    i = 6;
                } else if (textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                    i = 7;
                }
            }
            setTextDirection(i);
        }
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            getPaint().set(c0047a.a);
            setBreakStrategy(c0047a.f1981c);
            setHyphenationFrequency(c0047a.f1982d);
        } else {
            float textScaleX = c0047a.a.getTextScaleX();
            getPaint().set(c0047a.a);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        boolean z = d.g.n.b.E;
        if (z) {
            super.setTextSize(i, f2);
            return;
        }
        d.b.q.w wVar = this.b;
        if (wVar == null || z || wVar.d()) {
            return;
        }
        wVar.i.g(i, f2);
    }

    @Override // android.widget.TextView
    public void setTypeface(android.graphics.Typeface typeface, int i) {
        android.graphics.Typeface typefaceA = (typeface == null || i <= 0) ? null : d.g.g.d.a(getContext(), typeface, i);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        super.setTypeface(typeface, i);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.b();
        }
    }
}
