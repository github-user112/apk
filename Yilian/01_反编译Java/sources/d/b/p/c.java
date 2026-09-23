package d.b.p;

/* loaded from: classes.dex */
public class c extends android.content.ContextWrapper {
    public int a;
    public android.content.res.Resources.Theme b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.LayoutInflater f1674c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.res.Resources f1675d;

    public c() {
        super(null);
    }

    public c(android.content.Context context, int i) {
        super(context);
        this.a = i;
    }

    public final void a() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            android.content.res.Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.a, true);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        if (this.f1675d == null) {
            this.f1675d = super.getResources();
        }
        return this.f1675d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public java.lang.Object getSystemService(java.lang.String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f1674c == null) {
            this.f1674c = android.view.LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f1674c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources.Theme getTheme() {
        android.content.res.Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.a == 0) {
            this.a = d.b.i.Theme_AppCompat_Light;
        }
        a();
        return this.b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.a != i) {
            this.a = i;
            a();
        }
    }
}
