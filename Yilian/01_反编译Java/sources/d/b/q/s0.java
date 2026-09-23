package d.b.q;

/* loaded from: classes.dex */
public class s0 extends android.content.ContextWrapper {

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f1827c = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public static java.util.ArrayList<java.lang.ref.WeakReference<d.b.q.s0>> f1828d;
    public final android.content.res.Resources a;
    public final android.content.res.Resources.Theme b;

    public s0(android.content.Context context) {
        super(context);
        d.b.q.a1.a();
        this.a = new d.b.q.u0(this, context.getResources());
        this.b = null;
    }

    public static android.content.Context a(android.content.Context context) {
        boolean z = false;
        if (!(context instanceof d.b.q.s0) && !(context.getResources() instanceof d.b.q.u0) && !(context.getResources() instanceof d.b.q.a1)) {
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                d.b.q.a1.a();
            } else {
                z = true;
            }
        }
        if (!z) {
            return context;
        }
        synchronized (f1827c) {
            if (f1828d == null) {
                f1828d = new java.util.ArrayList<>();
            } else {
                for (int size = f1828d.size() - 1; size >= 0; size--) {
                    java.lang.ref.WeakReference<d.b.q.s0> weakReference = f1828d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1828d.remove(size);
                    }
                }
                for (int size2 = f1828d.size() - 1; size2 >= 0; size2--) {
                    java.lang.ref.WeakReference<d.b.q.s0> weakReference2 = f1828d.get(size2);
                    d.b.q.s0 s0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (s0Var != null && s0Var.getBaseContext() == context) {
                        return s0Var;
                    }
                }
            }
            d.b.q.s0 s0Var2 = new d.b.q.s0(context);
            f1828d.add(new java.lang.ref.WeakReference<>(s0Var2));
            return s0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        return this.a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        return this.a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources.Theme getTheme() {
        android.content.res.Resources.Theme theme = this.b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        android.content.res.Resources.Theme theme = this.b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
