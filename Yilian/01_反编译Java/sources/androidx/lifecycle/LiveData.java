package androidx.lifecycle;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final java.lang.Object j = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public boolean f120d;
    public boolean h;
    public boolean i;
    public final java.lang.Object a = new java.lang.Object();
    public d.c.a.b.b<d.l.n<? super T>, androidx.lifecycle.LiveData<T>.a> b = new d.c.a.b.b<>();

    /* renamed from: c, reason: collision with root package name */
    public int f119c = 0;

    /* renamed from: f, reason: collision with root package name */
    public volatile java.lang.Object f122f = j;

    /* renamed from: e, reason: collision with root package name */
    public volatile java.lang.Object f121e = j;

    /* renamed from: g, reason: collision with root package name */
    public int f123g = -1;

    public class LifecycleBoundObserver extends androidx.lifecycle.LiveData<T>.a implements d.l.f {

        /* renamed from: e, reason: collision with root package name */
        public final d.l.h f124e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.lifecycle.LiveData f125f;

        @Override // d.l.f
        public void d(d.l.h hVar, d.l.e.a aVar) {
            d.l.e.b bVar = ((d.l.i) this.f124e.getLifecycle()).b;
            if (bVar == d.l.e.b.DESTROYED) {
                this.f125f.f(this.a);
                return;
            }
            d.l.e.b bVar2 = null;
            while (bVar2 != bVar) {
                h(i());
                bVar2 = bVar;
                bVar = ((d.l.i) this.f124e.getLifecycle()).b;
            }
        }

        @Override // androidx.lifecycle.LiveData.a
        public boolean i() {
            return ((d.l.i) this.f124e.getLifecycle()).b.compareTo(d.l.e.b.STARTED) >= 0;
        }
    }

    public abstract class a {
        public final d.l.n<? super T> a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f126c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ androidx.lifecycle.LiveData f127d;

        public void h(boolean z) {
            if (z == this.b) {
                return;
            }
            this.b = z;
            androidx.lifecycle.LiveData liveData = this.f127d;
            int i = z ? 1 : -1;
            int i2 = liveData.f119c;
            liveData.f119c = i + i2;
            if (!liveData.f120d) {
                liveData.f120d = true;
                while (true) {
                    try {
                        if (i2 == liveData.f119c) {
                            break;
                        }
                        boolean z2 = i2 == 0 && liveData.f119c > 0;
                        boolean z3 = i2 > 0 && liveData.f119c == 0;
                        int i3 = liveData.f119c;
                        if (z2) {
                            liveData.d();
                        } else if (z3) {
                            liveData.e();
                        }
                        i2 = i3;
                    } finally {
                        liveData.f120d = false;
                    }
                }
            }
            if (this.b) {
                this.f127d.c(this);
            }
        }

        public abstract boolean i();
    }

    public static void a(java.lang.String str) {
        if (!d.c.a.a.a.b().a()) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.f("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(androidx.lifecycle.LiveData<T>.a aVar) {
        if (aVar.b) {
            if (!aVar.i()) {
                aVar.h(false);
                return;
            }
            int i = aVar.f126c;
            int i2 = this.f123g;
            if (i >= i2) {
                return;
            }
            aVar.f126c = i2;
            aVar.a.a((java.lang.Object) this.f121e);
        }
    }

    public void c(androidx.lifecycle.LiveData<T>.a aVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (aVar != null) {
                b(aVar);
                aVar = null;
            } else {
                d.c.a.b.b<d.l.n<? super T>, androidx.lifecycle.LiveData<T>.a>.d dVarB = this.b.b();
                while (dVarB.hasNext()) {
                    b((androidx.lifecycle.LiveData.a) ((java.util.Map.Entry) dVarB.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public void d() {
    }

    public void e() {
    }

    public void f(d.l.n<? super T> nVar) {
        a("removeObserver");
        androidx.lifecycle.LiveData<T>.a aVarE = this.b.e(nVar);
        if (aVarE == null) {
            return;
        }
        androidx.lifecycle.LiveData.LifecycleBoundObserver lifecycleBoundObserver = (androidx.lifecycle.LiveData.LifecycleBoundObserver) aVarE;
        d.l.i iVar = (d.l.i) lifecycleBoundObserver.f124e.getLifecycle();
        iVar.d("removeObserver");
        iVar.a.e(lifecycleBoundObserver);
        aVarE.h(false);
    }
}
