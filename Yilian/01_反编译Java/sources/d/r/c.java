package d.r;

/* loaded from: classes.dex */
public final class c {
    public final d.r.d a;
    public final d.r.b b = new d.r.b();

    public c(d.r.d dVar) {
        this.a = dVar;
    }

    public void a(android.os.Bundle bundle) {
        d.l.e lifecycle = this.a.getLifecycle();
        if (((d.l.i) lifecycle).b != d.l.e.b.INITIALIZED) {
            throw new java.lang.IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new androidx.savedstate.Recreator(this.a));
        final d.r.b bVar = this.b;
        if (bVar.f2239c) {
            throw new java.lang.IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            bVar.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        lifecycle.a(new d.l.f() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // d.l.f
            public void d(d.l.h hVar, d.l.e.a aVar) {
                d.r.b bVar2;
                boolean z;
                if (aVar == d.l.e.a.ON_START) {
                    bVar2 = bVar;
                    z = true;
                } else {
                    if (aVar != d.l.e.a.ON_STOP) {
                        return;
                    }
                    bVar2 = bVar;
                    z = false;
                }
                bVar2.f2241e = z;
            }
        });
        bVar.f2239c = true;
    }

    public void b(android.os.Bundle bundle) {
        d.r.b bVar = this.b;
        if (bVar == null) {
            throw null;
        }
        android.os.Bundle bundle2 = new android.os.Bundle();
        android.os.Bundle bundle3 = bVar.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        d.c.a.b.b<java.lang.String, d.r.b.InterfaceC0058b>.d dVarB = bVar.a.b();
        while (dVarB.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) dVarB.next();
            bundle2.putBundle((java.lang.String) entry.getKey(), ((d.r.b.InterfaceC0058b) entry.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
