package d.j.d;

/* loaded from: classes.dex */
public abstract class g0 {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2079c;

    /* renamed from: d, reason: collision with root package name */
    public int f2080d;

    /* renamed from: e, reason: collision with root package name */
    public int f2081e;

    /* renamed from: f, reason: collision with root package name */
    public int f2082f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2083g;
    public java.lang.String h;
    public int i;
    public java.lang.CharSequence j;
    public int k;
    public java.lang.CharSequence l;
    public java.util.ArrayList<java.lang.String> m;
    public java.util.ArrayList<java.lang.String> n;
    public java.util.ArrayList<java.lang.Runnable> p;
    public java.util.ArrayList<d.j.d.g0.a> a = new java.util.ArrayList<>();
    public boolean o = false;

    public static final class a {
        public int a;
        public androidx.fragment.app.Fragment b;

        /* renamed from: c, reason: collision with root package name */
        public int f2084c;

        /* renamed from: d, reason: collision with root package name */
        public int f2085d;

        /* renamed from: e, reason: collision with root package name */
        public int f2086e;

        /* renamed from: f, reason: collision with root package name */
        public int f2087f;

        /* renamed from: g, reason: collision with root package name */
        public d.l.e.b f2088g;
        public d.l.e.b h;

        public a() {
        }

        public a(int i, androidx.fragment.app.Fragment fragment) {
            this.a = i;
            this.b = fragment;
            d.l.e.b bVar = d.l.e.b.RESUMED;
            this.f2088g = bVar;
            this.h = bVar;
        }
    }

    public g0(d.j.d.u uVar, java.lang.ClassLoader classLoader) {
    }

    public void b(d.j.d.g0.a aVar) {
        this.a.add(aVar);
        aVar.f2084c = this.b;
        aVar.f2085d = this.f2079c;
        aVar.f2086e = this.f2080d;
        aVar.f2087f = this.f2081e;
    }

    public abstract void c();

    public void d(int i, androidx.fragment.app.Fragment fragment, java.lang.String str, int i2) {
        java.lang.Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !java.lang.reflect.Modifier.isPublic(modifiers) || (cls.isMemberClass() && !java.lang.reflect.Modifier.isStatic(modifiers))) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Fragment ");
            sbO.append(cls.getCanonicalName());
            sbO.append(" must be a public static class to be  properly recreated from instance state.");
            throw new java.lang.IllegalStateException(sbO.toString());
        }
        if (str != null) {
            java.lang.String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new java.lang.IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new java.lang.IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new java.lang.IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        b(new d.j.d.g0.a(i2, fragment));
    }

    public abstract d.j.d.g0 e(androidx.fragment.app.Fragment fragment);

    public abstract d.j.d.g0 f(androidx.fragment.app.Fragment fragment);
}
