package d.h.a;

/* loaded from: classes.dex */
public abstract class a extends android.widget.BaseAdapter implements android.widget.Filterable, d.h.a.b.a {
    public boolean a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public android.database.Cursor f2034c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f2035d;

    /* renamed from: e, reason: collision with root package name */
    public int f2036e;

    /* renamed from: f, reason: collision with root package name */
    public d.h.a.a.C0050a f2037f;

    /* renamed from: g, reason: collision with root package name */
    public android.database.DataSetObserver f2038g;
    public d.h.a.b h;

    /* renamed from: d.h.a.a$a, reason: collision with other inner class name */
    public class C0050a extends android.database.ContentObserver {
        public C0050a() {
            super(new android.os.Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            android.database.Cursor cursor;
            d.h.a.a aVar = d.h.a.a.this;
            if (!aVar.b || (cursor = aVar.f2034c) == null || cursor.isClosed()) {
                return;
            }
            aVar.a = aVar.f2034c.requery();
        }
    }

    public class b extends android.database.DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            d.h.a.a aVar = d.h.a.a.this;
            aVar.a = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            d.h.a.a aVar = d.h.a.a.this;
            aVar.a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(android.content.Context context, android.database.Cursor cursor, boolean z) {
        d.h.a.a.b bVar;
        int i = z ? 1 : 2;
        if ((i & 1) == 1) {
            i |= 2;
            this.b = true;
        } else {
            this.b = false;
        }
        boolean z2 = cursor != null;
        this.f2034c = cursor;
        this.a = z2;
        this.f2035d = context;
        this.f2036e = z2 ? cursor.getColumnIndexOrThrow(com.umeng.analytics.pro.am.f1240d) : -1;
        if ((i & 2) == 2) {
            this.f2037f = new d.h.a.a.C0050a();
            bVar = new d.h.a.a.b();
        } else {
            bVar = null;
            this.f2037f = null;
        }
        this.f2038g = bVar;
        if (z2) {
            d.h.a.a.C0050a c0050a = this.f2037f;
            if (c0050a != null) {
                cursor.registerContentObserver(c0050a);
            }
            android.database.DataSetObserver dataSetObserver = this.f2038g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract void a(android.view.View view, android.content.Context context, android.database.Cursor cursor);

    public void b(android.database.Cursor cursor) {
        android.database.Cursor cursor2 = this.f2034c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                d.h.a.a.C0050a c0050a = this.f2037f;
                if (c0050a != null) {
                    cursor2.unregisterContentObserver(c0050a);
                }
                android.database.DataSetObserver dataSetObserver = this.f2038g;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f2034c = cursor;
            if (cursor != null) {
                d.h.a.a.C0050a c0050a2 = this.f2037f;
                if (c0050a2 != null) {
                    cursor.registerContentObserver(c0050a2);
                }
                android.database.DataSetObserver dataSetObserver2 = this.f2038g;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f2036e = cursor.getColumnIndexOrThrow(com.umeng.analytics.pro.am.f1240d);
                this.a = true;
                notifyDataSetChanged();
            } else {
                this.f2036e = -1;
                this.a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract java.lang.CharSequence c(android.database.Cursor cursor);

    public abstract android.view.View d(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        android.database.Cursor cursor;
        if (!this.a || (cursor = this.f2034c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public android.view.View getDropDownView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
        if (!this.a) {
            return null;
        }
        this.f2034c.moveToPosition(i);
        if (view == null) {
            d.h.a.c cVar = (d.h.a.c) this;
            view = cVar.k.inflate(cVar.j, viewGroup, false);
        }
        a(view, this.f2035d, this.f2034c);
        return view;
    }

    @Override // android.widget.Filterable
    public android.widget.Filter getFilter() {
        if (this.h == null) {
            this.h = new d.h.a.b(this);
        }
        return this.h;
    }

    @Override // android.widget.Adapter
    public java.lang.Object getItem(int i) {
        android.database.Cursor cursor;
        if (!this.a || (cursor = this.f2034c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f2034c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        android.database.Cursor cursor;
        if (this.a && (cursor = this.f2034c) != null && cursor.moveToPosition(i)) {
            return this.f2034c.getLong(this.f2036e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
        if (!this.a) {
            throw new java.lang.IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f2034c.moveToPosition(i)) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.K("couldn't move cursor to position ", i));
        }
        if (view == null) {
            view = d(this.f2035d, this.f2034c, viewGroup);
        }
        a(view, this.f2035d, this.f2034c);
        return view;
    }
}
