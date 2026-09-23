package d.g.j;

/* loaded from: classes.dex */
public class c {
    public final d.g.j.i a;
    public final android.os.Handler b;

    public c(d.g.j.i iVar, android.os.Handler handler) {
        this.a = iVar;
        this.b = handler;
    }

    public void a(d.g.j.f.e eVar) {
        if (eVar.b == 0) {
            this.b.post(new d.g.j.a(this, this.a, eVar.a));
        } else {
            this.b.post(new d.g.j.b(this, this.a, eVar.b));
        }
    }
}
