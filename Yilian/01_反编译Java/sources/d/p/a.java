package d.p;

/* loaded from: classes.dex */
public class a {
    public static android.content.SharedPreferences a(android.content.Context context) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
    }
}
