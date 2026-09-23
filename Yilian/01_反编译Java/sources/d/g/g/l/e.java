package d.g.g.l;

/* loaded from: classes.dex */
public final class e extends android.graphics.drawable.Drawable.ConstantState {
    public int a;
    public android.graphics.drawable.Drawable.ConstantState b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.res.ColorStateList f1964c;

    /* renamed from: d, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f1965d;

    public e(d.g.g.l.e eVar) {
        this.f1964c = null;
        this.f1965d = d.g.g.l.c.f1959g;
        if (eVar != null) {
            this.a = eVar.a;
            this.b = eVar.b;
            this.f1964c = eVar.f1964c;
            this.f1965d = eVar.f1965d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.a;
        android.graphics.drawable.Drawable.ConstantState constantState = this.b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public android.graphics.drawable.Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
        return android.os.Build.VERSION.SDK_INT >= 21 ? new d.g.g.l.d(this, resources) : new d.g.g.l.c(this, resources);
    }
}
