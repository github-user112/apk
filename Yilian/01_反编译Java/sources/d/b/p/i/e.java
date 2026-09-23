package d.b.p.i;

/* loaded from: classes.dex */
public class e implements d.b.p.i.m, android.widget.AdapterView.OnItemClickListener {
    public android.content.Context a;
    public android.view.LayoutInflater b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.p.i.g f1717c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.appcompat.view.menu.ExpandedMenuView f1718d;

    /* renamed from: e, reason: collision with root package name */
    public int f1719e;

    /* renamed from: f, reason: collision with root package name */
    public int f1720f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f1721g;
    public d.b.p.i.m.a h;
    public d.b.p.i.e.a i;

    public class a extends android.widget.BaseAdapter {
        public int a = -1;

        public a() {
            a();
        }

        public void a() {
            d.b.p.i.g gVar = d.b.p.i.e.this.f1717c;
            d.b.p.i.i iVar = gVar.w;
            if (iVar != null) {
                gVar.i();
                java.util.ArrayList<d.b.p.i.i> arrayList = gVar.j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == iVar) {
                        this.a = i;
                        return;
                    }
                }
            }
            this.a = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public d.b.p.i.i getItem(int i) {
            d.b.p.i.g gVar = d.b.p.i.e.this.f1717c;
            gVar.i();
            java.util.ArrayList<d.b.p.i.i> arrayList = gVar.j;
            int i2 = i + d.b.p.i.e.this.f1719e;
            int i3 = this.a;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            d.b.p.i.g gVar = d.b.p.i.e.this.f1717c;
            gVar.i();
            int size = gVar.j.size() - d.b.p.i.e.this.f1719e;
            return this.a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            if (view == null) {
                d.b.p.i.e eVar = d.b.p.i.e.this;
                view = eVar.b.inflate(eVar.f1721g, viewGroup, false);
            }
            ((d.b.p.i.n.a) view).e(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(android.content.Context context, int i) {
        this.f1721g = i;
        this.a = context;
        this.b = android.view.LayoutInflater.from(context);
    }

    @Override // d.b.p.i.m
    public void a(d.b.p.i.g gVar, boolean z) {
        d.b.p.i.m.a aVar = this.h;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public android.widget.ListAdapter b() {
        if (this.i == null) {
            this.i = new d.b.p.i.e.a();
        }
        return this.i;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // d.b.p.i.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(android.content.Context r3, d.b.p.i.g r4) {
        /*
            r2 = this;
            int r0 = r2.f1720f
            if (r0 == 0) goto L12
            android.view.ContextThemeWrapper r0 = new android.view.ContextThemeWrapper
            int r1 = r2.f1720f
            r0.<init>(r3, r1)
            r2.a = r0
            android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r0)
            goto L20
        L12:
            android.content.Context r0 = r2.a
            if (r0 == 0) goto L22
            r2.a = r3
            android.view.LayoutInflater r0 = r2.b
            if (r0 != 0) goto L22
            android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
        L20:
            r2.b = r3
        L22:
            r2.f1717c = r4
            d.b.p.i.e$a r3 = r2.i
            if (r3 == 0) goto L2b
            r3.notifyDataSetChanged()
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.p.i.e.c(android.content.Context, d.b.p.i.g):void");
    }

    @Override // d.b.p.i.m
    public boolean e(d.b.p.i.r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        d.b.p.i.h hVar = new d.b.p.i.h(rVar);
        d.b.p.i.g gVar = hVar.a;
        d.b.k.g.a aVar = new d.b.k.g.a(gVar.a);
        d.b.p.i.e eVar = new d.b.p.i.e(aVar.a.a, d.b.g.abc_list_menu_item_layout);
        hVar.f1731c = eVar;
        eVar.h = hVar;
        d.b.p.i.g gVar2 = hVar.a;
        gVar2.b(eVar, gVar2.a);
        android.widget.ListAdapter listAdapterB = hVar.f1731c.b();
        androidx.appcompat.app.AlertController.b bVar = aVar.a;
        bVar.l = listAdapterB;
        bVar.m = hVar;
        android.view.View view = gVar.o;
        if (view != null) {
            bVar.f27g = view;
        } else {
            bVar.f24d = gVar.n;
            bVar.f26f = gVar.m;
        }
        aVar.a.k = hVar;
        d.b.k.g gVarA = aVar.a();
        hVar.b = gVarA;
        gVarA.setOnDismissListener(hVar);
        android.view.WindowManager.LayoutParams attributes = hVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        hVar.b.show();
        d.b.p.i.m.a aVar2 = this.h;
        if (aVar2 == null) {
            return true;
        }
        aVar2.b(rVar);
        return true;
    }

    @Override // d.b.p.i.m
    public void f(boolean z) {
        d.b.p.i.e.a aVar = this.i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // d.b.p.i.m
    public boolean h() {
        return false;
    }

    @Override // d.b.p.i.m
    public boolean i(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    @Override // d.b.p.i.m
    public boolean j(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    @Override // d.b.p.i.m
    public void k(d.b.p.i.m.a aVar) {
        this.h = aVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
        this.f1717c.s(this.i.getItem(i), this, 0);
    }
}
