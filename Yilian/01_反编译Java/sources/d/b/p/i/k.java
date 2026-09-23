package d.b.p.i;

/* loaded from: classes.dex */
public abstract class k implements d.b.p.i.p, d.b.p.i.m, android.widget.AdapterView.OnItemClickListener {
    public android.graphics.Rect a;

    public static int n(android.widget.ListAdapter listAdapter, android.view.ViewGroup viewGroup, android.content.Context context, int i) {
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        android.widget.FrameLayout frameLayout = null;
        android.view.View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = listAdapter.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new android.widget.FrameLayout(context);
            }
            view = listAdapter.getView(i4, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    public static boolean v(d.b.p.i.g gVar) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            android.view.MenuItem item = gVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // d.b.p.i.m
    public void c(android.content.Context context, d.b.p.i.g gVar) {
    }

    @Override // d.b.p.i.m
    public boolean i(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    @Override // d.b.p.i.m
    public boolean j(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    public abstract void l(d.b.p.i.g gVar);

    public boolean m() {
        return true;
    }

    public abstract void o(android.view.View view);

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
        android.widget.ListAdapter listAdapter = (android.widget.ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof android.widget.HeaderViewListAdapter ? (d.b.p.i.f) ((android.widget.HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (d.b.p.i.f) listAdapter).a.s((android.view.MenuItem) listAdapter.getItem(i), this, m() ? 0 : 4);
    }

    public abstract void p(boolean z);

    public abstract void q(int i);

    public abstract void r(int i);

    public abstract void s(android.widget.PopupWindow.OnDismissListener onDismissListener);

    public abstract void t(boolean z);

    public abstract void u(int i);
}
