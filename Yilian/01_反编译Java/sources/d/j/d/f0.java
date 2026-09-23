package d.j.d;

/* loaded from: classes.dex */
public class f0 {
    public final java.util.ArrayList<androidx.fragment.app.Fragment> a = new java.util.ArrayList<>();
    public final java.util.HashMap<java.lang.String, d.j.d.e0> b = new java.util.HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public d.j.d.b0 f2077c;

    public void a(androidx.fragment.app.Fragment fragment) {
        if (this.a.contains(fragment)) {
            throw new java.lang.IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.a) {
            this.a.add(fragment);
        }
        fragment.mAdded = true;
    }

    public void b() {
        this.b.values().removeAll(java.util.Collections.singleton(null));
    }

    public boolean c(java.lang.String str) {
        return this.b.get(str) != null;
    }

    public androidx.fragment.app.Fragment d(java.lang.String str) {
        d.j.d.e0 e0Var = this.b.get(str);
        if (e0Var != null) {
            return e0Var.f2073c;
        }
        return null;
    }

    public androidx.fragment.app.Fragment e(java.lang.String str) {
        androidx.fragment.app.Fragment fragmentFindFragmentByWho;
        for (d.j.d.e0 e0Var : this.b.values()) {
            if (e0Var != null && (fragmentFindFragmentByWho = e0Var.f2073c.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public java.util.List<d.j.d.e0> f() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (d.j.d.e0 e0Var : this.b.values()) {
            if (e0Var != null) {
                arrayList.add(e0Var);
            }
        }
        return arrayList;
    }

    public java.util.List<androidx.fragment.app.Fragment> g() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<d.j.d.e0> it = this.b.values().iterator();
        while (it.hasNext()) {
            d.j.d.e0 next = it.next();
            arrayList.add(next != null ? next.f2073c : null);
        }
        return arrayList;
    }

    public d.j.d.e0 h(java.lang.String str) {
        return this.b.get(str);
    }

    public java.util.List<androidx.fragment.app.Fragment> i() {
        java.util.ArrayList arrayList;
        if (this.a.isEmpty()) {
            return java.util.Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new java.util.ArrayList(this.a);
        }
        return arrayList;
    }

    public void j(d.j.d.e0 e0Var) {
        androidx.fragment.app.Fragment fragment = e0Var.f2073c;
        if (c(fragment.mWho)) {
            return;
        }
        this.b.put(fragment.mWho, e0Var);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f2077c.c(fragment);
            } else {
                this.f2077c.d(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public void k(d.j.d.e0 e0Var) {
        androidx.fragment.app.Fragment fragment = e0Var.f2073c;
        if (fragment.mRetainInstance) {
            this.f2077c.d(fragment);
        }
        if (this.b.put(fragment.mWho, null) != null && d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public void l(androidx.fragment.app.Fragment fragment) {
        synchronized (this.a) {
            this.a.remove(fragment);
        }
        fragment.mAdded = false;
    }
}
