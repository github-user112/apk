package d.b.q;

/* loaded from: classes.dex */
public class m extends android.widget.MultiAutoCompleteTextView implements d.g.m.n {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f1803c = {android.R.attr.popupBackground};
    public final d.b.q.e a;
    public final d.b.q.w b;

    /* JADX WARN: Illegal instructions before constructor call */
    public m(android.content.Context context, android.util.AttributeSet attributeSet) throws android.content.res.Resources.NotFoundException {
        int i = d.b.a.autoCompleteTextViewStyle;
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.v0 v0VarO = d.b.q.v0.o(getContext(), attributeSet, f1803c, i, 0);
        if (v0VarO.m(0)) {
            setDropDownBackgroundDrawable(v0VarO.e(0));
        }
        v0VarO.b.recycle();
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

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        android.view.inputmethod.InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d.b.k.r.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
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

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(d.b.l.a.a.b(getContext(), i));
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
}
