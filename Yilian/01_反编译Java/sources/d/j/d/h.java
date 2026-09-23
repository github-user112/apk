package d.j.d;

/* loaded from: classes.dex */
public class h implements java.lang.Runnable {
    public final /* synthetic */ d.j.d.u0.d a;
    public final /* synthetic */ d.j.d.u0.d b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2089c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.e.a f2090d;

    public h(d.j.d.c cVar, d.j.d.u0.d dVar, d.j.d.u0.d dVar2, boolean z, d.e.a aVar) {
        this.a = dVar;
        this.b = dVar2;
        this.f2089c = z;
        this.f2090d = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.j.d.n0.c(this.a.f2135c, this.b.f2135c, this.f2089c, this.f2090d, false);
    }
}
