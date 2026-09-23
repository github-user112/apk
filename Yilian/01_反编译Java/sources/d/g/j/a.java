package d.g.j;

/* loaded from: classes.dex */
public class a implements java.lang.Runnable {
    public final /* synthetic */ d.g.j.i a;
    public final /* synthetic */ android.graphics.Typeface b;

    public a(d.g.j.c cVar, d.g.j.i iVar, android.graphics.Typeface typeface) {
        this.a = iVar;
        this.b = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b(this.b);
    }
}
