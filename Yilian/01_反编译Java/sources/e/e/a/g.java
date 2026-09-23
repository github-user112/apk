package e.e.a;

/* loaded from: classes.dex */
public final class g {
    public static e.e.a.h a = new e.e.a.h();

    public static void a(java.lang.Object obj) {
        e.e.a.h hVar = a;
        if (hVar == null) {
            throw null;
        }
        hVar.b(3, null, obj == null ? "null" : !obj.getClass().isArray() ? obj.toString() : obj instanceof boolean[] ? java.util.Arrays.toString((boolean[]) obj) : obj instanceof byte[] ? java.util.Arrays.toString((byte[]) obj) : obj instanceof char[] ? java.util.Arrays.toString((char[]) obj) : obj instanceof short[] ? java.util.Arrays.toString((short[]) obj) : obj instanceof int[] ? java.util.Arrays.toString((int[]) obj) : obj instanceof long[] ? java.util.Arrays.toString((long[]) obj) : obj instanceof float[] ? java.util.Arrays.toString((float[]) obj) : obj instanceof double[] ? java.util.Arrays.toString((double[]) obj) : obj instanceof java.lang.Object[] ? java.util.Arrays.deepToString((java.lang.Object[]) obj) : "Couldn't find a correct type for the object", new java.lang.Object[0]);
    }

    public static void b(java.lang.String str, java.lang.Object... objArr) {
        a.b(3, null, str, objArr);
    }

    public static void c(java.lang.String str, java.lang.Object... objArr) {
        a.b(6, null, str, objArr);
    }

    public static void d(java.lang.Throwable th, java.lang.String str, java.lang.Object... objArr) {
        a.b(6, th, str, objArr);
    }

    public static void e(java.lang.String str, java.lang.Object... objArr) {
        a.b(4, null, str, objArr);
    }

    public static void f(java.lang.String str, java.lang.Object... objArr) {
        a.b(2, null, str, objArr);
    }
}
