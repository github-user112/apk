package d.b.q;

/* loaded from: classes.dex */
public class w0 implements android.view.View.OnClickListener {
    public final d.b.p.i.a a;
    public final /* synthetic */ d.b.q.x0 b;

    public w0(d.b.q.x0 x0Var) {
        this.b = x0Var;
        this.a = new d.b.p.i.a(this.b.a.getContext(), 0, android.R.id.home, 0, 0, this.b.i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        d.b.q.x0 x0Var = this.b;
        android.view.Window.Callback callback = x0Var.l;
        if (callback == null || !x0Var.m) {
            return;
        }
        callback.onMenuItemSelected(0, this.a);
    }
}
