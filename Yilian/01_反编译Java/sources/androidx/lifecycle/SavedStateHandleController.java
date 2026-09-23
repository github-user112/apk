package androidx.lifecycle;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements d.l.f {
    public final java.lang.String a;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public final d.l.q f128c;

    public static final class a implements d.r.b.a {
        @Override // d.r.b.a
        public void a(d.r.d dVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            if (!(dVar instanceof d.l.z)) {
                throw new java.lang.IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            d.l.y viewModelStore = ((d.l.z) dVar).getViewModelStore();
            d.r.b savedStateRegistry = dVar.getSavedStateRegistry();
            if (viewModelStore == null) {
                throw null;
            }
            java.util.Iterator it = new java.util.HashSet(viewModelStore.a.keySet()).iterator();
            while (it.hasNext()) {
                androidx.lifecycle.SavedStateHandleController.h(viewModelStore.a.get((java.lang.String) it.next()), savedStateRegistry, dVar.getLifecycle());
            }
            if (new java.util.HashSet(viewModelStore.a.keySet()).isEmpty()) {
                return;
            }
            savedStateRegistry.c(androidx.lifecycle.SavedStateHandleController.a.class);
        }
    }

    public SavedStateHandleController(java.lang.String str, d.l.q qVar) {
        this.a = str;
        this.f128c = qVar;
    }

    public static void h(d.l.s sVar, d.r.b bVar, d.l.e eVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.Object obj;
        java.util.Map<java.lang.String, java.lang.Object> map = sVar.a;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = sVar.a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        androidx.lifecycle.SavedStateHandleController savedStateHandleController = (androidx.lifecycle.SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.b) {
            return;
        }
        savedStateHandleController.i(bVar, eVar);
        j(bVar, eVar);
    }

    public static void j(final d.r.b bVar, final d.l.e eVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        d.l.e.b bVar2 = ((d.l.i) eVar).b;
        if (bVar2 != d.l.e.b.INITIALIZED) {
            if (!(bVar2.compareTo(d.l.e.b.STARTED) >= 0)) {
                eVar.a(new d.l.f() { // from class: androidx.lifecycle.SavedStateHandleController.1
                    @Override // d.l.f
                    public void d(d.l.h hVar, d.l.e.a aVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
                        if (aVar == d.l.e.a.ON_START) {
                            d.l.i iVar = (d.l.i) eVar;
                            iVar.d("removeObserver");
                            iVar.a.e(this);
                            bVar.c(androidx.lifecycle.SavedStateHandleController.a.class);
                        }
                    }
                });
                return;
            }
        }
        bVar.c(androidx.lifecycle.SavedStateHandleController.a.class);
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) {
        if (aVar == d.l.e.a.ON_DESTROY) {
            this.b = false;
            d.l.i iVar = (d.l.i) hVar.getLifecycle();
            iVar.d("removeObserver");
            iVar.a.e(this);
        }
    }

    public void i(d.r.b bVar, d.l.e eVar) {
        if (this.b) {
            throw new java.lang.IllegalStateException("Already attached to lifecycleOwner");
        }
        this.b = true;
        eVar.a(this);
        bVar.b(this.a, this.f128c.f2169d);
    }
}
