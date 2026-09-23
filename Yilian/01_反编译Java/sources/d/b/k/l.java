package d.b.k;

/* loaded from: classes.dex */
public class l implements d.g.m.l {
    public final /* synthetic */ d.b.k.k a;

    public l(d.b.k.k kVar) {
        this.a = kVar;
    }

    @Override // d.g.m.l
    public d.g.m.z a(android.view.View view, d.g.m.z zVar) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int iD = zVar.d();
        int iM = this.a.M(iD);
        if (iD != iM) {
            int iB = zVar.b();
            int iC = zVar.c();
            int iA = zVar.a();
            int i = android.os.Build.VERSION.SDK_INT;
            d.g.m.z.f eVar = i >= 30 ? new d.g.m.z.e(zVar) : i >= 29 ? new d.g.m.z.d(zVar) : i >= 20 ? new d.g.m.z.c(zVar) : new d.g.m.z.f(zVar);
            eVar.c(d.g.g.b.a(iB, iM, iC, iA));
            zVar = eVar.a();
        }
        return d.g.m.s.G(view, zVar);
    }
}
