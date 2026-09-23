package d.j.d;

/* loaded from: classes.dex */
public final class b0 extends d.l.s {
    public static final d.l.u j = new d.j.d.b0.a();

    /* renamed from: f, reason: collision with root package name */
    public final boolean f2057f;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> f2054c = new java.util.HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    public final java.util.HashMap<java.lang.String, d.j.d.b0> f2055d = new java.util.HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public final java.util.HashMap<java.lang.String, d.l.y> f2056e = new java.util.HashMap<>();

    /* renamed from: g, reason: collision with root package name */
    public boolean f2058g = false;
    public boolean h = false;
    public boolean i = false;

    public class a implements d.l.u {
        @Override // d.l.u
        public <T extends d.l.s> T a(java.lang.Class<T> cls) {
            return new d.j.d.b0(true);
        }
    }

    public b0(boolean z) {
        this.f2057f = z;
    }

    @Override // d.l.s
    public void a() {
        if (d.j.d.y.M(3)) {
            android.util.Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f2058g = true;
    }

    public void c(androidx.fragment.app.Fragment fragment) {
        if (this.i) {
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f2054c.containsKey(fragment.mWho)) {
                return;
            }
            this.f2054c.put(fragment.mWho, fragment);
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    public void d(androidx.fragment.app.Fragment fragment) {
        if (this.i) {
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f2054c.remove(fragment.mWho) != null) && d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    public boolean e(androidx.fragment.app.Fragment fragment) {
        if (this.f2054c.containsKey(fragment.mWho)) {
            return this.f2057f ? this.f2058g : !this.h;
        }
        return true;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.j.d.b0.class != obj.getClass()) {
            return false;
        }
        d.j.d.b0 b0Var = (d.j.d.b0) obj;
        return this.f2054c.equals(b0Var.f2054c) && this.f2055d.equals(b0Var.f2055d) && this.f2056e.equals(b0Var.f2056e);
    }

    public int hashCode() {
        return this.f2056e.hashCode() + ((this.f2055d.hashCode() + (this.f2054c.hashCode() * 31)) * 31);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("FragmentManagerViewModel{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append("} Fragments (");
        java.util.Iterator<androidx.fragment.app.Fragment> it = this.f2054c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        java.util.Iterator<java.lang.String> it2 = this.f2055d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        java.util.Iterator<java.lang.String> it3 = this.f2056e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
