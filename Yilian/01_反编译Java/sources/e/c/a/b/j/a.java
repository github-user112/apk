package e.c.a.b.j;

/* loaded from: classes.dex */
public class a {
    public static final android.animation.TimeInterpolator a;
    public static final android.animation.TimeInterpolator b;

    /* renamed from: c, reason: collision with root package name */
    public static final android.animation.TimeInterpolator f2606c;

    /* renamed from: d, reason: collision with root package name */
    public static final android.animation.TimeInterpolator f2607d;

    static {
        new android.view.animation.LinearInterpolator();
        a = new d.k.a.a.b();
        b = new d.k.a.a.a();
        f2606c = new d.k.a.a.c();
        f2607d = new android.view.animation.DecelerateInterpolator();
    }

    public static float a(float f2, float f3, float f4) {
        return ((f3 - f2) * f4) + f2;
    }
}
