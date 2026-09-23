package android.os;

/* loaded from: classes.dex */
public class SystemProperties {
    public static java.lang.String get(java.lang.String str) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.get(String key),key = ", str));
    }

    public static java.lang.String get(java.lang.String str, java.lang.String str2) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.get(String key, String def),key = ", str));
    }

    public static boolean getBoolean(java.lang.String str, boolean z) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.getBoolean(String key, boolean def),key = ", str));
    }

    public static int getInt(java.lang.String str, int i) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.getInt(String key, int def),key = ", str));
    }

    public static long getLong(java.lang.String str, long j) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.getLong(String key, long def),key = ", str));
    }

    public static void set(java.lang.String str, java.lang.String str2) {
        throw new java.lang.RuntimeException(e.a.c.a.a.e("SystemProperties.set(String key, String val),key = ", str));
    }
}
