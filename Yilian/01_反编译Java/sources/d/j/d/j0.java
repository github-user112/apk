package d.j.d;

/* loaded from: classes.dex */
public class j0 implements java.lang.Runnable {
    public final /* synthetic */ d.j.d.n0.a a;
    public final /* synthetic */ androidx.fragment.app.Fragment b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.g.i.a f2093c;

    public j0(d.j.d.n0.a aVar, androidx.fragment.app.Fragment fragment, d.g.i.a aVar2) {
        this.a = aVar;
        this.b = fragment;
        this.f2093c = aVar2;
    }

    @Override // java.lang.Runnable
    public void run() throws android.content.res.Resources.NotFoundException {
        ((d.j.d.y.d) this.a).a(this.b, this.f2093c);
    }
}
