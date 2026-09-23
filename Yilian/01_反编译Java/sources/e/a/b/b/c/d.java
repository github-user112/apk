package e.a.b.b.c;

/* loaded from: classes.dex */
public final class d {
    public final e.a.b.b.b.g a;
    public e.a.b.b.b.d b = null;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f2402c = null;

    /* renamed from: d, reason: collision with root package name */
    public int f2403d = 0;

    /* renamed from: e, reason: collision with root package name */
    public java.util.TreeMap<e.a.b.b.b.c, java.lang.Integer> f2404e = null;

    public d(e.a.b.b.b.g gVar) {
        this.a = gVar;
    }

    public static void a(e.a.b.b.b.c cVar, int i, int i2, java.lang.String str, java.io.PrintWriter printWriter, e.a.b.f.a aVar) {
        java.lang.String strL = cVar.l(str, d.s.y.e0(i) + ": ");
        if (printWriter != null) {
            printWriter.println(strL);
        }
        ((e.a.b.f.c) aVar).b(i2, strL);
    }

    public final void b() {
        if (this.b == null) {
            e.a.b.b.b.g gVar = this.a;
            gVar.a();
            this.b = gVar.f2349d;
        }
    }
}
