package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class AppCompatCheckBox extends android.widget.CheckBox implements d.g.n.e, d.g.m.n {
    public final d.b.q.h a;
    public final d.b.q.e b;

    /* renamed from: c, reason: collision with root package name */
    public final d.b.q.w f53c;

    /* JADX WARN: Illegal instructions before constructor call */
    public AppCompatCheckBox(android.content.Context context, android.util.AttributeSet attributeSet) throws android.content.res.Resources.NotFoundException {
        int i = d.b.a.checkboxStyle;
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.h hVar = new d.b.q.h(this);
        this.a = hVar;
        hVar.c(attributeSet, i);
        d.b.q.e eVar = new d.b.q.e(this);
        this.b = eVar;
        eVar.d(attributeSet, i);
        d.b.q.w wVar = new d.b.q.w(this);
        this.f53c = wVar;
        wVar.e(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            eVar.a();
        }
        d.b.q.w wVar = this.f53c;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        d.b.q.h hVar = this.a;
        return hVar != null ? hVar.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public android.content.res.ColorStateList getSupportButtonTintList() {
        d.b.q.h hVar = this.a;
        if (hVar != null) {
            return hVar.b;
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportButtonTintMode() {
        d.b.q.h hVar = this.a;
        if (hVar != null) {
            return hVar.f1782c;
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            eVar.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) throws java.lang.NoSuchFieldException {
        setButtonDrawable(d.b.l.a.a.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(android.graphics.drawable.Drawable drawable) throws java.lang.NoSuchFieldException {
        super.setButtonDrawable(drawable);
        d.b.q.h hVar = this.a;
        if (hVar != null) {
            if (hVar.f1785f) {
                hVar.f1785f = false;
            } else {
                hVar.f1785f = true;
                hVar.a();
            }
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.e eVar = this.b;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    @Override // d.g.n.e
    public void setSupportButtonTintList(android.content.res.ColorStateList colorStateList) throws java.lang.NoSuchFieldException {
        d.b.q.h hVar = this.a;
        if (hVar != null) {
            hVar.b = colorStateList;
            hVar.f1783d = true;
            hVar.a();
        }
    }

    @Override // d.g.n.e
    public void setSupportButtonTintMode(android.graphics.PorterDuff.Mode mode) throws java.lang.NoSuchFieldException {
        d.b.q.h hVar = this.a;
        if (hVar != null) {
            hVar.f1782c = mode;
            hVar.f1784e = true;
            hVar.a();
        }
    }
}
