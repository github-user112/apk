package d.b.q;

/* loaded from: classes.dex */
public class j extends android.widget.EditText implements d.g.m.n {
    public final d.b.q.e a;
    public final d.b.q.w b;

    /* renamed from: c, reason: collision with root package name */
    public final d.b.q.v f1796c;

    /* JADX WARN: Illegal instructions before constructor call */
    public j(android.content.Context context, android.util.AttributeSet attributeSet) throws android.content.res.Resources.NotFoundException {
        int i = d.b.a.editTextStyle;
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.e eVar = new d.b.q.e(this);
        this.a = eVar;
        eVar.d(attributeSet, i);
        d.b.q.w wVar = new d.b.q.w(this);
        this.b = wVar;
        wVar.e(attributeSet, i);
        this.b.b();
        this.f1796c = new d.b.q.v(this);
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

    @Override // android.widget.EditText, android.widget.TextView
    public android.text.Editable getText() {
        return android.os.Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public android.view.textclassifier.TextClassifier getTextClassifier() {
        d.b.q.v vVar;
        return (android.os.Build.VERSION.SDK_INT >= 28 || (vVar = this.f1796c) == null) ? super.getTextClassifier() : vVar.a();
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

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.k.r.B0(this, callback));
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
    public void setTextClassifier(android.view.textclassifier.TextClassifier textClassifier) {
        d.b.q.v vVar;
        if (android.os.Build.VERSION.SDK_INT >= 28 || (vVar = this.f1796c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            vVar.b = textClassifier;
        }
    }
}
