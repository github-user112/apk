package d.j.d;

/* loaded from: classes.dex */
public class u {
    public static final d.e.h<java.lang.ClassLoader, d.e.h<java.lang.String, java.lang.Class<?>>> a = new d.e.h<>();

    public static boolean b(java.lang.ClassLoader classLoader, java.lang.String str) {
        try {
            return androidx.fragment.app.Fragment.class.isAssignableFrom(c(classLoader, str));
        } catch (java.lang.ClassNotFoundException unused) {
            return false;
        }
    }

    public static java.lang.Class<?> c(java.lang.ClassLoader classLoader, java.lang.String str) throws java.lang.ClassNotFoundException {
        d.e.h<java.lang.String, java.lang.Class<?>> orDefault = a.getOrDefault(classLoader, null);
        if (orDefault == null) {
            orDefault = new d.e.h<>();
            a.put(classLoader, orDefault);
        }
        java.lang.Class<?> orDefault2 = orDefault.getOrDefault(str, null);
        if (orDefault2 != null) {
            return orDefault2;
        }
        java.lang.Class<?> cls = java.lang.Class.forName(str, false, classLoader);
        orDefault.put(str, cls);
        return cls;
    }

    public static java.lang.Class<? extends androidx.fragment.app.Fragment> d(java.lang.ClassLoader classLoader, java.lang.String str) {
        try {
            return c(classLoader, str);
        } catch (java.lang.ClassCastException e2) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e2);
        } catch (java.lang.ClassNotFoundException e3) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": make sure class name exists"), e3);
        }
    }

    public androidx.fragment.app.Fragment a(java.lang.ClassLoader classLoader, java.lang.String str) {
        throw null;
    }
}
