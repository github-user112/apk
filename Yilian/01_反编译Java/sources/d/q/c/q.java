package d.q.c;

/* loaded from: classes.dex */
public final class q extends d.q.c.r {
    public q(androidx.recyclerview.widget.RecyclerView.k kVar) {
        super(kVar, null);
    }

    @Override // d.q.c.r
    public int b(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
        if (this.a != null) {
            return view.getBottom() + ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.bottom + ((android.view.ViewGroup.MarginLayoutParams) lVar).bottomMargin;
        }
        throw null;
    }

    @Override // d.q.c.r
    public int c(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
        if (this.a != null) {
            return (view.getTop() - ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.top) - ((android.view.ViewGroup.MarginLayoutParams) lVar).topMargin;
        }
        throw null;
    }

    @Override // d.q.c.r
    public int d() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.a;
        return kVar.p - kVar.t();
    }

    @Override // d.q.c.r
    public int e() {
        return this.a.w();
    }

    @Override // d.q.c.r
    public int f() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.a;
        return (kVar.p - kVar.w()) - this.a.t();
    }
}
