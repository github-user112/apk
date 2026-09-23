package d.b.q;

/* loaded from: classes.dex */
public class f extends android.widget.Button implements d.g.m.n, d.g.n.b {
    public final d.b.q.e a;
    public final d.b.q.w b;

    public f(android.content.Context context, android.util.AttributeSet attributeSet, int i) throws android.content.res.Resources.NotFoundException {
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.e eVar = new d.b.q.e(this);
        this.a = eVar;
        eVar.d(attributeSet, i);
        d.b.q.w wVar = new d.b.q.w(this);
        this.b = wVar;
        wVar.e(attributeSet, i);
        this.b.b();
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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(android.widget.Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(android.widget.Button.class.getName());
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
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.k.r.B0(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.a.setAllCaps(z);
        }
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

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i) {
        super.setTextAppearance(context, i);
        d.b.q.w wVar = this.b;
        if (wVar != null) {
            wVar.f(context, i);
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
}
