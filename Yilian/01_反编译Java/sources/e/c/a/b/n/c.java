package e.c.a.b.n;

/* loaded from: classes.dex */
public class c {
    public static final int a;

    static {
        int i = android.os.Build.VERSION.SDK_INT;
        a = i >= 21 ? 2 : i >= 18 ? 1 : 0;
    }
}
