package d.b.p.i;

/* loaded from: classes.dex */
public class f extends android.widget.BaseAdapter {
    public d.b.p.i.g a;
    public int b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1722c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1723d;

    /* renamed from: e, reason: collision with root package name */
    public final android.view.LayoutInflater f1724e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1725f;

    public f(d.b.p.i.g gVar, android.view.LayoutInflater layoutInflater, boolean z, int i) {
        this.f1723d = z;
        this.f1724e = layoutInflater;
        this.a = gVar;
        this.f1725f = i;
        a();
    }

    public void a() {
        d.b.p.i.g gVar = this.a;
        d.b.p.i.i iVar = gVar.w;
        if (iVar != null) {
            gVar.i();
            java.util.ArrayList<d.b.p.i.i> arrayList = gVar.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == iVar) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public d.b.p.i.i getItem(int i) {
        java.util.ArrayList<d.b.p.i.i> arrayListL;
        if (this.f1723d) {
            d.b.p.i.g gVar = this.a;
            gVar.i();
            arrayListL = gVar.j;
        } else {
            arrayListL = this.a.l();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return arrayListL.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        java.util.ArrayList<d.b.p.i.i> arrayListL;
        if (this.f1723d) {
            d.b.p.i.g gVar = this.a;
            gVar.i();
            arrayListL = gVar.j;
        } else {
            arrayListL = this.a.l();
        }
        int i = this.b;
        int size = arrayListL.size();
        return i < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1724e.inflate(this.f1725f, viewGroup, false);
        }
        int i2 = getItem(i).b;
        int i3 = i - 1;
        androidx.appcompat.view.menu.ListMenuItemView listMenuItemView = (androidx.appcompat.view.menu.ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.a.m() && i2 != (i3 >= 0 ? getItem(i3).b : i2));
        d.b.p.i.n.a aVar = (d.b.p.i.n.a) view;
        if (this.f1722c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.e(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
