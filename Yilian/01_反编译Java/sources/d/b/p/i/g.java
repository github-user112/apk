package d.b.p.i;

/* loaded from: classes.dex */
public class g implements d.g.h.a.a {
    public static final int[] z = {1, 4, 5, 3, 2, 0};
    public final android.content.Context a;
    public final android.content.res.Resources b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1726c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1727d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.p.i.g.a f1728e;
    public java.lang.CharSequence m;
    public android.graphics.drawable.Drawable n;
    public android.view.View o;
    public d.b.p.i.i w;
    public boolean y;
    public int l = 0;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean t = false;
    public java.util.ArrayList<d.b.p.i.i> u = new java.util.ArrayList<>();
    public java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<d.b.p.i.m>> v = new java.util.concurrent.CopyOnWriteArrayList<>();
    public boolean x = false;

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<d.b.p.i.i> f1729f = new java.util.ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<d.b.p.i.i> f1730g = new java.util.ArrayList<>();
    public boolean h = true;
    public java.util.ArrayList<d.b.p.i.i> i = new java.util.ArrayList<>();
    public java.util.ArrayList<d.b.p.i.i> j = new java.util.ArrayList<>();
    public boolean k = true;

    public interface a {
        boolean a(d.b.p.i.g gVar, android.view.MenuItem menuItem);

        void b(d.b.p.i.g gVar);
    }

    public interface b {
        boolean a(d.b.p.i.i iVar);
    }

    public g(android.content.Context context) {
        boolean z2 = false;
        this.a = context;
        this.b = context.getResources();
        if (this.b.getConfiguration().keyboard != 1 && d.g.m.u.d(android.view.ViewConfiguration.get(this.a), this.a)) {
            z2 = true;
        }
        this.f1727d = z2;
    }

    public android.view.MenuItem a(int i, int i2, int i3, java.lang.CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0) {
            int[] iArr = z;
            if (i5 < iArr.length) {
                int i6 = (iArr[i5] << 16) | (65535 & i3);
                d.b.p.i.i iVar = new d.b.p.i.i(this, i, i2, i3, i6, charSequence, this.l);
                java.util.ArrayList<d.b.p.i.i> arrayList = this.f1729f;
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        i4 = 0;
                        break;
                    }
                    if (arrayList.get(size).f1733d <= i6) {
                        i4 = size + 1;
                        break;
                    }
                }
                arrayList.add(i4, iVar);
                q(true);
                return iVar;
            }
        }
        throw new java.lang.IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i) {
        return a(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.b.getString(i4));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i, int i2, int i3, java.lang.CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(java.lang.CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, android.content.ComponentName componentName, android.content.Intent[] intentArr, android.content.Intent intent, int i4, android.view.MenuItem[] menuItemArr) {
        int i5;
        android.content.pm.PackageManager packageManager = this.a.getPackageManager();
        java.util.List<android.content.pm.ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            android.content.pm.ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            android.content.Intent intent2 = new android.content.Intent(i7 < 0 ? intent : intentArr[i7]);
            android.content.pm.ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new android.content.ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            d.b.p.i.i iVar = (d.b.p.i.i) a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            iVar.setIcon(resolveInfo.loadIcon(packageManager));
            iVar.setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = iVar;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.b.getString(i4));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i, int i2, int i3, java.lang.CharSequence charSequence) {
        d.b.p.i.i iVar = (d.b.p.i.i) a(i, i2, i3, charSequence);
        d.b.p.i.r rVar = new d.b.p.i.r(this.a, this, iVar);
        iVar.o = rVar;
        rVar.setHeaderTitle(iVar.f1734e);
        return rVar;
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(java.lang.CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(d.b.p.i.m mVar, android.content.Context context) {
        this.v.add(new java.lang.ref.WeakReference<>(mVar));
        mVar.c(context, this);
        this.k = true;
    }

    public final void c(boolean z2) {
        if (this.t) {
            return;
        }
        this.t = true;
        java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
        while (it.hasNext()) {
            java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
            d.b.p.i.m mVar = next.get();
            if (mVar == null) {
                this.v.remove(next);
            } else {
                mVar.a(this, z2);
            }
        }
        this.t = false;
    }

    @Override // android.view.Menu
    public void clear() {
        d.b.p.i.i iVar = this.w;
        if (iVar != null) {
            d(iVar);
        }
        this.f1729f.clear();
        q(true);
    }

    public void clearHeader() {
        this.n = null;
        this.m = null;
        this.o = null;
        q(false);
    }

    @Override // android.view.Menu
    public void close() {
        c(true);
    }

    public boolean d(d.b.p.i.i iVar) {
        boolean zI = false;
        if (!this.v.isEmpty() && this.w == iVar) {
            z();
            java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
            while (it.hasNext()) {
                java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
                d.b.p.i.m mVar = next.get();
                if (mVar == null) {
                    this.v.remove(next);
                } else {
                    zI = mVar.i(this, iVar);
                    if (zI) {
                        break;
                    }
                }
            }
            y();
            if (zI) {
                this.w = null;
            }
        }
        return zI;
    }

    public boolean e(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        d.b.p.i.g.a aVar = this.f1728e;
        return aVar != null && aVar.a(gVar, menuItem);
    }

    public boolean f(d.b.p.i.i iVar) {
        boolean zJ = false;
        if (this.v.isEmpty()) {
            return false;
        }
        z();
        java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
        while (it.hasNext()) {
            java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
            d.b.p.i.m mVar = next.get();
            if (mVar == null) {
                this.v.remove(next);
            } else {
                zJ = mVar.j(this, iVar);
                if (zJ) {
                    break;
                }
            }
        }
        y();
        if (zJ) {
            this.w = iVar;
        }
        return zJ;
    }

    @Override // android.view.Menu
    public android.view.MenuItem findItem(int i) {
        android.view.MenuItem menuItemFindItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            d.b.p.i.i iVar = this.f1729f.get(i2);
            if (iVar.a == i) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (menuItemFindItem = iVar.o.findItem(i)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public d.b.p.i.i g(int i, android.view.KeyEvent keyEvent) {
        java.util.ArrayList<d.b.p.i.i> arrayList = this.u;
        arrayList.clear();
        h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        android.view.KeyCharacterMap.KeyData keyData = new android.view.KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zN = n();
        for (int i2 = 0; i2 < size; i2++) {
            d.b.p.i.i iVar = arrayList.get(i2);
            char c2 = zN ? iVar.j : iVar.h;
            if ((c2 == keyData.meta[0] && (metaState & 2) == 0) || ((c2 == keyData.meta[2] && (metaState & 2) != 0) || (zN && c2 == '\b' && i == 67))) {
                return iVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public android.view.MenuItem getItem(int i) {
        return this.f1729f.get(i);
    }

    public void h(java.util.List<d.b.p.i.i> list, int i, android.view.KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        android.view.KeyCharacterMap.KeyData keyData = new android.view.KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f1729f.size();
            for (int i2 = 0; i2 < size; i2++) {
                d.b.p.i.i iVar = this.f1729f.get(i2);
                if (iVar.hasSubMenu()) {
                    iVar.o.h(list, i, keyEvent);
                }
                char c2 = zN ? iVar.j : iVar.h;
                if (((modifiers & 69647) == ((zN ? iVar.k : iVar.i) & 69647)) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c2 == cArr[0] || c2 == cArr[2] || (zN && c2 == '\b' && i == 67)) && iVar.isEnabled()) {
                        list.add(iVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.y) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f1729f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public void i() {
        java.util.ArrayList<d.b.p.i.i> arrayListL = l();
        if (this.k) {
            java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
            boolean zH = false;
            while (it.hasNext()) {
                java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
                d.b.p.i.m mVar = next.get();
                if (mVar == null) {
                    this.v.remove(next);
                } else {
                    zH |= mVar.h();
                }
            }
            if (zH) {
                this.i.clear();
                this.j.clear();
                int size = arrayListL.size();
                for (int i = 0; i < size; i++) {
                    d.b.p.i.i iVar = arrayListL.get(i);
                    (iVar.g() ? this.i : this.j).add(iVar);
                }
            } else {
                this.i.clear();
                this.j.clear();
                this.j.addAll(l());
            }
            this.k = false;
        }
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, android.view.KeyEvent keyEvent) {
        return g(i, keyEvent) != null;
    }

    public java.lang.String j() {
        return "android:menu:actionviewstates";
    }

    public d.b.p.i.g k() {
        return this;
    }

    public java.util.ArrayList<d.b.p.i.i> l() {
        if (!this.h) {
            return this.f1730g;
        }
        this.f1730g.clear();
        int size = this.f1729f.size();
        for (int i = 0; i < size; i++) {
            d.b.p.i.i iVar = this.f1729f.get(i);
            if (iVar.isVisible()) {
                this.f1730g.add(iVar);
            }
        }
        this.h = false;
        this.k = true;
        return this.f1730g;
    }

    public boolean m() {
        return this.x;
    }

    public boolean n() {
        return this.f1726c;
    }

    public boolean o() {
        return this.f1727d;
    }

    public void p() {
        this.k = true;
        q(true);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return r(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, android.view.KeyEvent keyEvent, int i2) {
        d.b.p.i.i iVarG = g(i, keyEvent);
        boolean zS = iVarG != null ? s(iVarG, null, i2) : false;
        if ((i2 & 2) != 0) {
            c(true);
        }
        return zS;
    }

    public void q(boolean z2) {
        if (this.p) {
            this.q = true;
            if (z2) {
                this.r = true;
                return;
            }
            return;
        }
        if (z2) {
            this.h = true;
            this.k = true;
        }
        if (this.v.isEmpty()) {
            return;
        }
        z();
        java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
        while (it.hasNext()) {
            java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
            d.b.p.i.m mVar = next.get();
            if (mVar == null) {
                this.v.remove(next);
            } else {
                mVar.f(z2);
            }
        }
        y();
    }

    public boolean r(android.view.MenuItem menuItem, int i) {
        return s(menuItem, null, i);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f1729f.get(i2).b == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f1729f.size() - i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size2 || this.f1729f.get(i2).b != i) {
                    break;
                }
                t(i2, false);
                i3 = i4;
            }
            q(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f1729f.get(i2).a == i) {
                break;
            } else {
                i2++;
            }
        }
        t(i2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00db A[PHI: r1
  0x00db: PHI (r1v13 boolean) = (r1v12 boolean), (r1v11 boolean), (r1v15 boolean) binds: [B:68:0x00d9, B:43:0x0073, B:36:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean s(android.view.MenuItem r7, d.b.p.i.m r8, int r9) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.p.i.g.s(android.view.MenuItem, d.b.p.i.m, int):boolean");
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z2, boolean z3) {
        int size = this.f1729f.size();
        for (int i2 = 0; i2 < size; i2++) {
            d.b.p.i.i iVar = this.f1729f.get(i2);
            if (iVar.b == i) {
                iVar.x = (iVar.x & (-5)) | (z3 ? 4 : 0);
                iVar.setCheckable(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z2) {
        this.x = z2;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z2) {
        int size = this.f1729f.size();
        for (int i2 = 0; i2 < size; i2++) {
            d.b.p.i.i iVar = this.f1729f.get(i2);
            if (iVar.b == i) {
                iVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z2) {
        int size = this.f1729f.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            d.b.p.i.i iVar = this.f1729f.get(i2);
            if (iVar.b == i && iVar.l(z2)) {
                z3 = true;
            }
        }
        if (z3) {
            q(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f1726c = z2;
        q(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1729f.size();
    }

    public final void t(int i, boolean z2) {
        if (i < 0 || i >= this.f1729f.size()) {
            return;
        }
        this.f1729f.remove(i);
        if (z2) {
            q(true);
        }
    }

    public void u(d.b.p.i.m mVar) {
        java.util.Iterator<java.lang.ref.WeakReference<d.b.p.i.m>> it = this.v.iterator();
        while (it.hasNext()) {
            java.lang.ref.WeakReference<d.b.p.i.m> next = it.next();
            d.b.p.i.m mVar2 = next.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.v.remove(next);
            }
        }
    }

    public void v(android.os.Bundle bundle) {
        android.view.MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        android.util.SparseArray<android.os.Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = size();
        for (int i = 0; i < size; i++) {
            android.view.MenuItem item = getItem(i);
            android.view.View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((d.b.p.i.r) item.getSubMenu()).v(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (menuItemFindItem = findItem(i2)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void w(android.os.Bundle bundle) {
        int size = size();
        android.util.SparseArray<? extends android.os.Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            android.view.MenuItem item = getItem(i);
            android.view.View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new android.util.SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((d.b.p.i.r) item.getSubMenu()).w(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void x(int i, java.lang.CharSequence charSequence, int i2, android.graphics.drawable.Drawable drawable, android.view.View view) {
        android.content.res.Resources resources = this.b;
        if (view != null) {
            this.o = view;
            this.m = null;
            this.n = null;
        } else {
            if (i > 0) {
                this.m = resources.getText(i);
            } else if (charSequence != null) {
                this.m = charSequence;
            }
            if (i2 > 0) {
                this.n = d.g.f.a.d(this.a, i2);
            } else if (drawable != null) {
                this.n = drawable;
            }
            this.o = null;
        }
        q(false);
    }

    public void y() {
        this.p = false;
        if (this.q) {
            this.q = false;
            q(this.r);
        }
    }

    public void z() {
        if (this.p) {
            return;
        }
        this.p = true;
        this.q = false;
        this.r = false;
    }
}
