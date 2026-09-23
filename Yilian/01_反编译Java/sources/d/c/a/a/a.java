package d.c.a.a;

/* loaded from: classes.dex */
public class a extends d.c.a.a.c {

    /* renamed from: c, reason: collision with root package name */
    public static volatile d.c.a.a.a f1868c;
    public d.c.a.a.c a;
    public d.c.a.a.c b;

    public a() {
        d.c.a.a.b bVar = new d.c.a.a.b();
        this.b = bVar;
        this.a = bVar;
    }

    public static d.c.a.a.a b() {
        if (f1868c != null) {
            return f1868c;
        }
        synchronized (d.c.a.a.a.class) {
            if (f1868c == null) {
                f1868c = new d.c.a.a.a();
            }
        }
        return f1868c;
    }

    @Override // d.c.a.a.c
    public boolean a() {
        return this.a.a();
    }
}
