package d.g.h.a;

/* loaded from: classes.dex */
public interface b extends android.view.MenuItem {
    d.g.h.a.b a(d.g.m.b bVar);

    d.g.m.b b();

    @Override // android.view.MenuItem
    boolean collapseActionView();

    @Override // android.view.MenuItem
    boolean expandActionView();

    @Override // android.view.MenuItem
    android.view.View getActionView();

    @Override // android.view.MenuItem
    int getAlphabeticModifiers();

    @Override // android.view.MenuItem
    java.lang.CharSequence getContentDescription();

    @Override // android.view.MenuItem
    android.content.res.ColorStateList getIconTintList();

    @Override // android.view.MenuItem
    android.graphics.PorterDuff.Mode getIconTintMode();

    @Override // android.view.MenuItem
    int getNumericModifiers();

    @Override // android.view.MenuItem
    java.lang.CharSequence getTooltipText();

    @Override // android.view.MenuItem
    boolean isActionViewExpanded();

    @Override // android.view.MenuItem
    android.view.MenuItem setActionView(int i);

    @Override // android.view.MenuItem
    android.view.MenuItem setActionView(android.view.View view);

    @Override // android.view.MenuItem
    android.view.MenuItem setAlphabeticShortcut(char c2, int i);

    @Override // android.view.MenuItem
    d.g.h.a.b setContentDescription(java.lang.CharSequence charSequence);

    @Override // android.view.MenuItem
    android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList);

    @Override // android.view.MenuItem
    android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode);

    @Override // android.view.MenuItem
    android.view.MenuItem setNumericShortcut(char c2, int i);

    @Override // android.view.MenuItem
    android.view.MenuItem setShortcut(char c2, char c3, int i, int i2);

    @Override // android.view.MenuItem
    void setShowAsAction(int i);

    @Override // android.view.MenuItem
    android.view.MenuItem setShowAsActionFlags(int i);

    @Override // android.view.MenuItem
    d.g.h.a.b setTooltipText(java.lang.CharSequence charSequence);
}
