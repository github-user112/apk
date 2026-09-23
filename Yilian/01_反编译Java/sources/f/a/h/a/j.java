package f.a.h.a;

/* loaded from: classes.dex */
public class j {
    public static f.a.h.a.j b;
    public f.a.h.a.h a = null;

    public static synchronized f.a.h.a.j a() {
        if (b == null) {
            b = new f.a.h.a.j();
        }
        return b;
    }
}
