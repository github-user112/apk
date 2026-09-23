package d.g.j;

/* loaded from: classes.dex */
public class b implements java.lang.Runnable {
    public final /* synthetic */ d.g.j.i a;
    public final /* synthetic */ int b;

    public b(d.g.j.c cVar, d.g.j.i iVar, int i) {
        this.a = iVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a(this.b);
    }
}
