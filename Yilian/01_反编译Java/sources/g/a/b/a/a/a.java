package g.a.b.a.a;

/* loaded from: classes.dex */
public class a {
    public static java.lang.Object a;
    public static java.lang.Class<?> b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Method f3121c;

    static {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.id.impl.IdProviderImpl");
            b = cls;
            a = cls.newInstance();
            b.getMethod("getUDID", android.content.Context.class);
            f3121c = b.getMethod("getOAID", android.content.Context.class);
            b.getMethod("getVAID", android.content.Context.class);
            b.getMethod("getAAID", android.content.Context.class);
        } catch (java.lang.Exception e2) {
            android.util.Log.e("IdentifierManager", "reflect exception!", e2);
        }
    }
}
