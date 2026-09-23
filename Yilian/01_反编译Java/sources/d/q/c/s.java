package d.q.c;

/* loaded from: classes.dex */
public class s implements d.q.c.b.InterfaceC0057b {
    public final /* synthetic */ androidx.recyclerview.widget.RecyclerView a;

    public s(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public android.view.View a(int i) {
        return this.a.getChildAt(i);
    }

    public int b() {
        return this.a.getChildCount();
    }

    public void c(int i) {
        android.view.View childAt = this.a.getChildAt(i);
        if (childAt != null) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
            if (recyclerView == null) {
                throw null;
            }
            androidx.recyclerview.widget.RecyclerView.u(childAt);
            recyclerView.C();
            childAt.clearAnimation();
        }
        this.a.removeViewAt(i);
    }
}
