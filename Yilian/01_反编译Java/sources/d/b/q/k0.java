package d.b.q;

/* loaded from: classes.dex */
public class k0 extends d.b.q.i0 implements d.b.q.j0 {
    public static java.lang.reflect.Method H;
    public d.b.q.j0 G;

    public static class a extends d.b.q.d0 {
        public final int o;
        public final int p;
        public d.b.q.j0 q;
        public android.view.MenuItem r;

        public a(android.content.Context context, boolean z) {
            super(context, z);
            android.content.res.Configuration configuration = context.getResources().getConfiguration();
            if (android.os.Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.o = 22;
                this.p = 21;
            } else {
                this.o = 21;
                this.p = 22;
            }
        }

        @Override // d.b.q.d0, android.view.View
        public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
            int headersCount;
            int iPointToPosition;
            int i;
            if (this.q != null) {
                android.widget.ListAdapter adapter = getAdapter();
                if (adapter instanceof android.widget.HeaderViewListAdapter) {
                    android.widget.HeaderViewListAdapter headerViewListAdapter = (android.widget.HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    adapter = headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                }
                d.b.p.i.f fVar = (d.b.p.i.f) adapter;
                d.b.p.i.i item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i = iPointToPosition - headersCount) >= 0 && i < fVar.getCount()) {
                    item = fVar.getItem(i);
                }
                android.view.MenuItem menuItem = this.r;
                if (menuItem != item) {
                    d.b.p.i.g gVar = fVar.a;
                    if (menuItem != null) {
                        this.q.e(gVar, menuItem);
                    }
                    this.r = item;
                    if (item != null) {
                        this.q.c(gVar, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
            androidx.appcompat.view.menu.ListMenuItemView listMenuItemView = (androidx.appcompat.view.menu.ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.o) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.p) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ((d.b.p.i.f) getAdapter()).a.c(false);
            return true;
        }

        public void setHoverListener(d.b.q.j0 j0Var) {
            this.q = j0Var;
        }

        @Override // d.b.q.d0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(android.graphics.drawable.Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (android.os.Build.VERSION.SDK_INT <= 28) {
                H = android.widget.PopupWindow.class.getDeclaredMethod("setTouchModal", java.lang.Boolean.TYPE);
            }
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public k0(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // d.b.q.j0
    public void c(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        d.b.q.j0 j0Var = this.G;
        if (j0Var != null) {
            j0Var.c(gVar, menuItem);
        }
    }

    @Override // d.b.q.j0
    public void e(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        d.b.q.j0 j0Var = this.G;
        if (j0Var != null) {
            j0Var.e(gVar, menuItem);
        }
    }

    @Override // d.b.q.i0
    public d.b.q.d0 q(android.content.Context context, boolean z) {
        d.b.q.k0.a aVar = new d.b.q.k0.a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    public void u(boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT > 28) {
            this.B.setTouchModal(z);
            return;
        }
        java.lang.reflect.Method method = H;
        if (method != null) {
            try {
                method.invoke(this.B, java.lang.Boolean.valueOf(z));
            } catch (java.lang.Exception unused) {
                android.util.Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }
}
