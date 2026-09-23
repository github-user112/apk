package e.c.b.a;

/* loaded from: classes.dex */
public final class l {

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public static final java.lang.Object a;

    static {
        java.lang.Object objA = a();
        a = objA;
        if (objA != null) {
            b("getStackTraceElement", java.lang.Throwable.class, java.lang.Integer.TYPE);
        }
        if (a == null) {
            return;
        }
        try {
            java.lang.reflect.Method methodB = b("getStackTraceDepth", java.lang.Throwable.class);
            if (methodB == null) {
                return;
            }
            methodB.invoke(a(), new java.lang.Throwable());
        } catch (java.lang.IllegalAccessException | java.lang.UnsupportedOperationException | java.lang.reflect.InvocationTargetException unused) {
        }
    }

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public static java.lang.Object a() {
        try {
            return java.lang.Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
        } catch (java.lang.ThreadDeath e2) {
            throw e2;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public static java.lang.reflect.Method b(java.lang.String str, java.lang.Class<?>... clsArr) {
        try {
            return java.lang.Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (java.lang.ThreadDeath e2) {
            throw e2;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static void c(java.lang.Throwable th) {
        if (th instanceof java.lang.RuntimeException) {
            throw ((java.lang.RuntimeException) th);
        }
        if (th instanceof java.lang.Error) {
            throw ((java.lang.Error) th);
        }
    }
}
