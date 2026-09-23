package d.j.d;

/* loaded from: classes.dex */
public class r0 implements java.lang.Runnable {
    public final /* synthetic */ java.util.ArrayList a;
    public final /* synthetic */ java.util.Map b;

    public r0(d.j.d.p0 p0Var, java.util.ArrayList arrayList, java.util.Map map) {
        this.a = arrayList;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            android.view.View view = (android.view.View) this.a.get(i);
            d.g.m.s.V(view, (java.lang.String) this.b.get(d.g.m.s.u(view)));
        }
    }
}
