package d.b.q;

/* loaded from: classes.dex */
public class g extends android.widget.CheckedTextView {
    public static final int[] b = {android.R.attr.checkMark};
    public final d.b.q.w a;

    public g(android.content.Context context, android.util.AttributeSet attributeSet) throws android.content.res.Resources.NotFoundException {
        super(d.b.q.s0.a(context), attributeSet, android.R.attr.checkedTextViewStyle);
        d.b.q.w wVar = new d.b.q.w(this);
        this.a = wVar;
        wVar.e(attributeSet, android.R.attr.checkedTextViewStyle);
        this.a.b();
        d.b.q.v0 v0VarO = d.b.q.v0.o(getContext(), attributeSet, b, android.R.attr.checkedTextViewStyle, 0);
        setCheckMarkDrawable(v0VarO.e(0));
        v0VarO.b.recycle();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.w wVar = this.a;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
        android.view.inputmethod.InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d.b.k.r.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(d.b.l.a.a.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.k.r.B0(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(android.content.Context context, int i) {
        super.setTextAppearance(context, i);
        d.b.q.w wVar = this.a;
        if (wVar != null) {
            wVar.f(context, i);
        }
    }
}
