package d.q.c;

/* loaded from: classes.dex */
public class x {
    public final d.e.a<androidx.recyclerview.widget.RecyclerView.x, d.q.c.x.a> a = new d.e.a<>();
    public final d.e.e<androidx.recyclerview.widget.RecyclerView.x> b = new d.e.e<>();

    public static class a {

        /* renamed from: d, reason: collision with root package name */
        public static d.g.l.b<d.q.c.x.a> f2237d = new d.g.l.b<>(20);
        public int a;
        public androidx.recyclerview.widget.RecyclerView.h.c b;

        /* renamed from: c, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.h.c f2238c;

        public static d.q.c.x.a a() {
            d.q.c.x.a aVarA = f2237d.a();
            return aVarA == null ? new d.q.c.x.a() : aVarA;
        }

        public static void b(d.q.c.x.a aVar) {
            aVar.a = 0;
            aVar.b = null;
            aVar.f2238c = null;
            f2237d.b(aVar);
        }
    }

    public interface b {
    }

    public void a(androidx.recyclerview.widget.RecyclerView.x xVar, androidx.recyclerview.widget.RecyclerView.h.c cVar) {
        d.q.c.x.a orDefault = this.a.getOrDefault(xVar, null);
        if (orDefault == null) {
            orDefault = d.q.c.x.a.a();
            this.a.put(xVar, orDefault);
        }
        orDefault.b = cVar;
        orDefault.a |= 4;
    }

    public void b(androidx.recyclerview.widget.RecyclerView.x xVar) {
        int iH = this.b.h() - 1;
        while (true) {
            if (iH < 0) {
                break;
            }
            if (xVar == this.b.i(iH)) {
                d.e.e<androidx.recyclerview.widget.RecyclerView.x> eVar = this.b;
                java.lang.Object[] objArr = eVar.f1895c;
                java.lang.Object obj = objArr[iH];
                java.lang.Object obj2 = d.e.e.f1894e;
                if (obj != obj2) {
                    objArr[iH] = obj2;
                    eVar.a = true;
                }
            } else {
                iH--;
            }
        }
        d.q.c.x.a aVarRemove = this.a.remove(xVar);
        if (aVarRemove != null) {
            d.q.c.x.a.b(aVarRemove);
        }
    }
}
