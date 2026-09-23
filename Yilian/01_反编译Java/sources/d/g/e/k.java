package d.g.e;

/* loaded from: classes.dex */
public class k {
    public static final java.lang.Object a = new java.lang.Object();
    public static java.lang.reflect.Field b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1939c;

    public static android.util.SparseArray<android.os.Bundle> a(java.util.List<android.os.Bundle> list) {
        int size = list.size();
        android.util.SparseArray<android.os.Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            android.os.Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new android.util.SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static android.os.Bundle b(d.g.e.f fVar) {
        android.os.Bundle bundle = new android.os.Bundle();
        androidx.core.graphics.drawable.IconCompat iconCompat = fVar.a;
        bundle.putInt("icon", iconCompat != null ? iconCompat.b() : 0);
        bundle.putCharSequence("title", null);
        bundle.putParcelable("actionIntent", null);
        android.os.Bundle bundle2 = new android.os.Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", false);
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", c(null));
        bundle.putBoolean("showsUserInterface", false);
        bundle.putInt("semanticAction", 0);
        return bundle;
    }

    public static android.os.Bundle[] c(d.g.e.m[] mVarArr) {
        return null;
    }

    public static android.os.Bundle d(android.app.Notification.Builder builder, d.g.e.f fVar) {
        androidx.core.graphics.drawable.IconCompat iconCompat = fVar.a;
        builder.addAction(iconCompat != null ? iconCompat.b() : 0, null, null);
        android.os.Bundle bundle = new android.os.Bundle((android.os.Bundle) null);
        bundle.putBoolean("android.support.allowGeneratedReplies", false);
        return bundle;
    }
}
