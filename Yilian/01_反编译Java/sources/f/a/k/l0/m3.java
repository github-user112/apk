package f.a.k.l0;

/* loaded from: classes.dex */
public class m3 implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ f.a.k.l0.p3 a;

    public m3(f.a.k.l0.p3 p3Var) {
        this.a = p3Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        android.graphics.Rect rect = new android.graphics.Rect();
        this.a.a.getWindowVisibleDisplayFrame(rect);
        int iHeight = rect.height();
        e.a.c.a.a.v("MirrorFragment visibleHeight = ", iHeight);
        f.a.k.l0.p3 p3Var = this.a;
        int i = p3Var.u;
        if (i == 0) {
            p3Var.u = iHeight;
            return;
        }
        if (i == iHeight) {
            return;
        }
        if (i - iHeight > 200) {
            int i2 = i - iHeight;
            if (p3Var == null) {
                throw null;
            }
            e.a.c.a.a.v("MirrorFragment keyBoardShow height = ", i2);
            this.a.u = iHeight;
            return;
        }
        if (iHeight - i > 200) {
            int i3 = iHeight - i;
            if (p3Var == null) {
                throw null;
            }
            java.lang.StringBuilder sbP = e.a.c.a.a.p("MirrorFragment keyBoardHide height = ", i3, ", hideBecauseKeycodeEnter = ");
            sbP.append(p3Var.v);
            sbP.append(" presenter：");
            e.a.c.a.a.C(sbP, p3Var.C != null);
            net.easyconn.ui.widget.EcEditText ecEditText = p3Var.f3075e;
            if (ecEditText != null && ecEditText.isFocused()) {
                p3Var.f3075e.clearFocus();
            }
            if (p3Var.v) {
                p3Var.v = false;
            } else {
                p3Var.C.o0(0, 4);
            }
            this.a.u = iHeight;
        }
    }
}
