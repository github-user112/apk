package d.q.c;

/* loaded from: classes.dex */
public final class p extends d.q.c.r {
    public p(androidx.recyclerview.widget.RecyclerView.k kVar) {
        super(kVar, null);
    }

    @Override // d.q.c.r
    public int b(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
        if (this.a != null) {
            return view.getRight() + ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.right + ((android.view.ViewGroup.MarginLayoutParams) lVar).rightMargin;
        }
        throw null;
    }

    @Override // d.q.c.r
    public int c(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.l lVar = (androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams();
        if (this.a != null) {
            return (view.getLeft() - ((androidx.recyclerview.widget.RecyclerView.l) view.getLayoutParams()).b.left) - ((android.view.ViewGroup.MarginLayoutParams) lVar).leftMargin;
        }
        throw null;
    }

    @Override // d.q.c.r
    public int d() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.a;
        return kVar.o - kVar.v();
    }

    @Override // d.q.c.r
    public int e() {
        return this.a.u();
    }

    @Override // d.q.c.r
    public int f() {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.a;
        return (kVar.o - kVar.u()) - this.a.v();
    }
}
