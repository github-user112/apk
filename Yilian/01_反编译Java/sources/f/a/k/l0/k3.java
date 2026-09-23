package f.a.k.l0;

/* loaded from: classes.dex */
public class k3 implements android.text.TextWatcher {
    public final /* synthetic */ f.a.k.l0.p3 a;

    public k3(f.a.k.l0.p3 p3Var) {
        this.a = p3Var;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(android.text.Editable editable) {
        this.a.f0();
        e.e.a.g.a("MirrorFragment after text:" + editable.toString() + ", start:" + this.a.f3075e.getSelectionStart() + ", end:" + this.a.f3075e.getSelectionEnd());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        e.e.a.g.a("MirrorFragment before text:" + ((java.lang.Object) charSequence));
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        e.e.a.g.a("MirrorFragment text:" + ((java.lang.Object) charSequence));
        this.a.C.r(charSequence.toString());
    }
}
