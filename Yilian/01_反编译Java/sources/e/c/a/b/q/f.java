package e.c.a.b.q;

/* loaded from: classes.dex */
public class f extends android.widget.ImageButton {
    public int a;

    public final void b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.a = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.a = i;
    }
}
