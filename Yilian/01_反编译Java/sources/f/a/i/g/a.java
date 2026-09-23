package f.a.i.g;

/* loaded from: classes.dex */
public class a {
    public static volatile f.a.i.g.a b;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f2886c = new java.lang.Object();
    public android.content.SharedPreferences a;

    public a(android.content.Context context) {
        this.a = android.preference.PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static f.a.i.g.a b(android.content.Context context) {
        if (b == null) {
            synchronized (f2886c) {
                if (b == null) {
                    b = new f.a.i.g.a(context);
                }
            }
        }
        return b;
    }

    public boolean a(java.lang.String str, boolean z) {
        return this.a.getBoolean(str, z);
    }

    public void c(java.lang.String str, int i) {
        android.content.SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putInt(str, i);
        editorEdit.commit();
    }
}
