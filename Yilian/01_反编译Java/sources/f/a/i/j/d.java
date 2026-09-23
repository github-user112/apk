package f.a.i.j;

/* loaded from: classes.dex */
public class d implements java.lang.Runnable {
    public final /* synthetic */ f.a.i.j.c a;

    public d(f.a.i.j.c cVar) {
        this.a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() throws java.lang.Throwable {
        f.a.i.j.c cVar = this.a;
        java.lang.String str = cVar.a;
        f.a.i.j.b bVar = cVar.f2923f;
        if (bVar != null) {
            try {
                bVar.a.f2916g = f.a.i.j.c.i;
                cVar.i(str, f.a.i.m.c.a(bVar.toString()));
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("EcStatsManager sendStatsInfo exception: ");
                sbO.append(android.util.Log.getStackTraceString(e2));
                e.e.a.g.a(sbO.toString());
            }
        }
    }
}
