package f.a.k.l0;

/* loaded from: classes.dex */
public class l3 implements android.widget.TextView.OnEditorActionListener {
    public final /* synthetic */ f.a.k.l0.p3 a;

    public l3(f.a.k.l0.p3 p3Var) {
        this.a = p3Var;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(android.widget.TextView textView, int i, android.view.KeyEvent keyEvent) {
        if (keyEvent == null) {
            return false;
        }
        java.lang.StringBuilder sbP = e.a.c.a.a.p("MirrorFragment onEditorAction->actionId:", i, ",KeyCode:");
        sbP.append(keyEvent.getKeyCode());
        e.e.a.g.a(sbP.toString());
        this.a.C.o0(i, keyEvent.getKeyCode());
        if (keyEvent.getKeyCode() == 66) {
            this.a.v = true;
        }
        return false;
    }
}
