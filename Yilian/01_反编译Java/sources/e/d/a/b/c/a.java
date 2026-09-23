package e.d.a.b.c;

/* loaded from: classes.dex */
public class a {

    @android.annotation.SuppressLint({"StaticFieldLeak"})
    public static e.d.a.b.c.a b;
    public final android.content.Context a;

    /* JADX WARN: Removed duplicated region for block: B:81:0x014e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(android.content.Context r13) throws android.content.pm.PackageManager.NameNotFoundException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.d.a.b.c.a.<init>(android.content.Context):void");
    }

    public static synchronized void a(android.content.Context context) {
        android.util.Log.i("AGConnectInstance", "AGConnectInstance#initialize");
        android.content.Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        if (b == null) {
            b = new e.d.a.b.c.a(context);
        }
    }
}
