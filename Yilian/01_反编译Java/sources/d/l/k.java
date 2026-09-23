package d.l;

/* loaded from: classes.dex */
public class k {
    public static java.util.Map<java.lang.Class<?>, java.lang.Integer> a = new java.util.HashMap();
    public static java.util.Map<java.lang.Class<?>, java.util.List<java.lang.reflect.Constructor<? extends d.l.d>>> b = new java.util.HashMap();

    public static d.l.d a(java.lang.reflect.Constructor<? extends d.l.d> constructor, java.lang.Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (java.lang.IllegalAccessException e2) {
            throw new java.lang.RuntimeException(e2);
        } catch (java.lang.InstantiationException e3) {
            throw new java.lang.RuntimeException(e3);
        } catch (java.lang.reflect.InvocationTargetException e4) {
            throw new java.lang.RuntimeException(e4);
        }
    }

    public static java.lang.String b(java.lang.String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0116 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(java.lang.Class<?> r11) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.l.k.c(java.lang.Class):int");
    }

    public static d.l.f d(java.lang.Object obj) {
        boolean z = obj instanceof d.l.f;
        boolean z2 = obj instanceof d.l.c;
        if (z && z2) {
            return new androidx.lifecycle.FullLifecycleObserverAdapter((d.l.c) obj, (d.l.f) obj);
        }
        if (z2) {
            return new androidx.lifecycle.FullLifecycleObserverAdapter((d.l.c) obj, null);
        }
        if (z) {
            return (d.l.f) obj;
        }
        java.lang.Class<?> cls = obj.getClass();
        if (c(cls) != 2) {
            return new androidx.lifecycle.ReflectiveGenericLifecycleObserver(obj);
        }
        java.util.List<java.lang.reflect.Constructor<? extends d.l.d>> list = b.get(cls);
        if (list.size() == 1) {
            return new androidx.lifecycle.SingleGeneratedAdapterObserver(a(list.get(0), obj));
        }
        d.l.d[] dVarArr = new d.l.d[list.size()];
        for (int i = 0; i < list.size(); i++) {
            dVarArr[i] = a(list.get(i), obj);
        }
        return new androidx.lifecycle.CompositeGeneratedAdaptersObserver(dVarArr);
    }
}
