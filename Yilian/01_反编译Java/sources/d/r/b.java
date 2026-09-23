package d.r;

@android.annotation.SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class b {
    public android.os.Bundle b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2239c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.savedstate.Recreator.a f2240d;
    public d.c.a.b.b<java.lang.String, d.r.b.InterfaceC0058b> a = new d.c.a.b.b<>();

    /* renamed from: e, reason: collision with root package name */
    public boolean f2241e = true;

    public interface a {
        void a(d.r.d dVar);
    }

    /* renamed from: d.r.b$b, reason: collision with other inner class name */
    public interface InterfaceC0058b {
        android.os.Bundle a();
    }

    public android.os.Bundle a(java.lang.String str) {
        if (!this.f2239c) {
            throw new java.lang.IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        android.os.Bundle bundle = this.b;
        if (bundle == null) {
            return null;
        }
        android.os.Bundle bundle2 = bundle.getBundle(str);
        this.b.remove(str);
        if (this.b.isEmpty()) {
            this.b = null;
        }
        return bundle2;
    }

    public void b(java.lang.String str, d.r.b.InterfaceC0058b interfaceC0058b) {
        if (this.a.d(str, interfaceC0058b) != null) {
            throw new java.lang.IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void c(java.lang.Class<? extends d.r.b.a> cls) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        if (!this.f2241e) {
            throw new java.lang.IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f2240d == null) {
            this.f2240d = new androidx.savedstate.Recreator.a(this);
        }
        try {
            cls.getDeclaredConstructor(new java.lang.Class[0]);
            androidx.savedstate.Recreator.a aVar = this.f2240d;
            aVar.a.add(cls.getName());
        } catch (java.lang.NoSuchMethodException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Class");
            sbO.append(cls.getSimpleName());
            sbO.append(" must have default constructor in order to be automatically recreated");
            throw new java.lang.IllegalArgumentException(sbO.toString(), e2);
        }
    }
}
