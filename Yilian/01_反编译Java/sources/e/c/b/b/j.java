package e.c.b.b;

/* loaded from: classes.dex */
public final class j {
    public static boolean a(java.util.Set<?> set, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof java.util.Set) {
            java.util.Set set2 = (java.util.Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
            }
        }
        return false;
    }

    public static int b(java.util.Set<?> set) {
        java.util.Iterator<?> it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            java.lang.Object next = it.next();
            iHashCode = ((iHashCode + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    public static <E> e.c.b.b.t0<E> c(java.util.Set<E> set, java.util.Set<?> set2) {
        if (set == null) {
            throw new java.lang.NullPointerException("set1");
        }
        if (set2 != null) {
            return new e.c.b.b.r0(set, set2);
        }
        throw new java.lang.NullPointerException("set2");
    }

    @java.lang.SafeVarargs
    public static <E> java.util.ArrayList<E> d(E... eArr) {
        if (eArr == null) {
            throw null;
        }
        int length = eArr.length;
        d.s.y.l(length, "arraySize");
        long j = length + 5 + (length / 10);
        java.util.ArrayList<E> arrayList = new java.util.ArrayList<>(j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? Integer.MIN_VALUE : (int) j);
        java.util.Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <E> java.util.Set<E> e() {
        return java.util.Collections.newSetFromMap(new java.util.IdentityHashMap());
    }

    public static boolean f(java.util.Set<?> set, java.util.Iterator<?> it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }
}
