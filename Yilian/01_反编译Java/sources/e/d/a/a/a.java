package e.d.a.a;

/* loaded from: classes.dex */
public abstract class a {
    public static final java.util.Map<java.lang.String, e.d.a.a.a> a = new java.util.HashMap();
    public static final java.lang.Object b = new java.lang.Object();

    public static e.d.a.a.a a(android.content.Context context) {
        e.d.a.a.a aVar;
        android.content.Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        java.lang.String packageName = context.getPackageName();
        synchronized (b) {
            aVar = a.get(packageName);
            if (aVar == null) {
                aVar = new e.d.a.a.b.a(context, packageName);
                a.put(packageName, aVar);
            }
        }
        return aVar;
    }

    public abstract java.lang.String b(java.lang.String str);
}
