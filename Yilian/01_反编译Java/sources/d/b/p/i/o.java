package d.b.p.i;

/* loaded from: classes.dex */
public class o extends d.b.p.i.c implements android.view.Menu {

    /* renamed from: d, reason: collision with root package name */
    public final d.g.h.a.a f1746d;

    public o(android.content.Context context, d.g.h.a.a aVar) {
        super(context);
        if (aVar == null) {
            throw new java.lang.IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1746d = aVar;
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i) {
        return c(this.f1746d.add(i));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i, int i2, int i3, int i4) {
        return c(this.f1746d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i, int i2, int i3, java.lang.CharSequence charSequence) {
        return c(this.f1746d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(java.lang.CharSequence charSequence) {
        return c(this.f1746d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, android.content.ComponentName componentName, android.content.Intent[] intentArr, android.content.Intent intent, int i4, android.view.MenuItem[] menuItemArr) {
        android.view.MenuItem[] menuItemArr2 = menuItemArr != null ? new android.view.MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f1746d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = c(menuItemArr2[i5]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i) {
        return d(this.f1746d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return d(this.f1746d.addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i, int i2, int i3, java.lang.CharSequence charSequence) {
        return d(this.f1746d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(java.lang.CharSequence charSequence) {
        return d(this.f1746d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        java.util.Map<d.g.h.a.b, android.view.MenuItem> map = this.b;
        if (map != null) {
            map.clear();
        }
        java.util.Map<d.g.h.a.c, android.view.SubMenu> map2 = this.f1708c;
        if (map2 != null) {
            map2.clear();
        }
        this.f1746d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f1746d.close();
    }

    @Override // android.view.Menu
    public android.view.MenuItem findItem(int i) {
        return c(this.f1746d.findItem(i));
    }

    @Override // android.view.Menu
    public android.view.MenuItem getItem(int i) {
        return c(this.f1746d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f1746d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, android.view.KeyEvent keyEvent) {
        return this.f1746d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f1746d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, android.view.KeyEvent keyEvent, int i2) {
        return this.f1746d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        java.util.Map<d.g.h.a.b, android.view.MenuItem> map = this.b;
        if (map != null) {
            java.util.Iterator<d.g.h.a.b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
        this.f1746d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        java.util.Map<d.g.h.a.b, android.view.MenuItem> map = this.b;
        if (map != null) {
            java.util.Iterator<d.g.h.a.b> it = map.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (i == it.next().getItemId()) {
                    it.remove();
                    break;
                }
            }
        }
        this.f1746d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f1746d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f1746d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f1746d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1746d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1746d.size();
    }
}
