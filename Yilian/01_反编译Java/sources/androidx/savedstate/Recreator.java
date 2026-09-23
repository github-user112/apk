package androidx.savedstate;

@android.annotation.SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class Recreator implements d.l.f {
    public final d.r.d a;

    public static final class a implements d.r.b.InterfaceC0058b {
        public final java.util.Set<java.lang.String> a = new java.util.HashSet();

        public a(d.r.b bVar) {
            bVar.b("androidx.savedstate.Restarter", this);
        }

        @Override // d.r.b.InterfaceC0058b
        public android.os.Bundle a() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putStringArrayList("classes_to_restore", new java.util.ArrayList<>(this.a));
            return bundle;
        }
    }

    public Recreator(d.r.d dVar) {
        this.a = dVar;
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        if (aVar != d.l.e.a.ON_CREATE) {
            throw new java.lang.AssertionError("Next event must be ON_CREATE");
        }
        d.l.i iVar = (d.l.i) hVar.getLifecycle();
        iVar.d("removeObserver");
        iVar.a.e(this);
        android.os.Bundle bundleA = this.a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        java.util.ArrayList<java.lang.String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new java.lang.IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        java.util.Iterator<java.lang.String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            java.lang.String next = it.next();
            try {
                java.lang.Class<? extends U> clsAsSubclass = java.lang.Class.forName(next, false, androidx.savedstate.Recreator.class.getClassLoader()).asSubclass(d.r.b.a.class);
                try {
                    java.lang.reflect.Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new java.lang.Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        ((d.r.b.a) declaredConstructor.newInstance(new java.lang.Object[0])).a(this.a);
                    } catch (java.lang.Exception e2) {
                        throw new java.lang.RuntimeException(e.a.c.a.a.e("Failed to instantiate ", next), e2);
                    }
                } catch (java.lang.NoSuchMethodException e3) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Class");
                    sbO.append(clsAsSubclass.getSimpleName());
                    sbO.append(" must have default constructor in order to be automatically recreated");
                    throw new java.lang.IllegalStateException(sbO.toString(), e3);
                }
            } catch (java.lang.ClassNotFoundException e4) {
                throw new java.lang.RuntimeException(e.a.c.a.a.f("Class ", next, " wasn't found"), e4);
            }
        }
    }
}
